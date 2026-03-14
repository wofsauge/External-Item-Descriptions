import os
import re

PROJECT_ROOT = r'd:\\Programme\\Steam\\steamapps\\common\\The Binding of Isaac Rebirth\\mods\\External-Item-Descriptions'
OUTPUT_MD = 'EID_Function_Documentation.md'

eid_func_pattern = re.compile(r'^\s*function\s+EID:([a-zA-Z0-9_]+)\s*\(')
comment_pattern = re.compile(r'^\s*--[-]*\s?(.*)')

def find_lua_files(root):
    for dirpath, _, filenames in os.walk(root):
        for fname in filenames:
            if fname.endswith('.lua'):
                yield os.path.join(dirpath, fname)

def format_docstring(doc):
    """Format the docstring to be Markdown compatible."""
    doc = doc.strip()

    if '@' in doc:
        words = doc.split()
        if len(words) >= 2:
            words[0] = f'*{words[0]}*\t'
            words[1] = f'__{words[1]}__\t'
            doc = ' '.join(words)
    return doc

def extract_functions_with_docs(lua_path):
    with open(lua_path, encoding='utf-8') as f:
        lines = f.readlines()

    docs = []
    undocumented = []
    i = 0
    while i < len(lines):
        match = eid_func_pattern.match(lines[i])
        if match:
            func_name = lines[i].split("function")[1].split("--")[0].strip()
            # Look for comment block above
            doc_lines = []
            j = i - 1
            while j >= 0:
                comment_match = comment_pattern.match(lines[j])
                if lines[j].strip() == '':
                    break
                elif comment_match and "@diagnostic" not in comment_match.group(1):
                    doc_lines.insert(0, format_docstring(comment_match.group(1)))
                    j -= 1
                else:
                    break
            doc = '\n'.join(doc_lines).strip()
            if doc:
                docs.append({
                    'name': func_name,
                    'doc': doc,
                    'file': lua_path
                })
            else:
                undocumented.append({
                    'name': func_name,
                    'file': lua_path
                })
        i += 1
    
    return docs, undocumented

def main():
    all_docs = []
    all_undocumented = []
    for lua_file in find_lua_files(PROJECT_ROOT):
        docs, undocumented = extract_functions_with_docs(lua_file)
        all_docs.extend(docs)
        all_undocumented.extend(undocumented)

    with open(OUTPUT_MD, 'w', encoding='utf-8') as md:
        md.write('# EID Function Documentation\n\n')
        md.write('## Documented Functions\n\n')
        all_docs.sort(key=lambda x: x['name'])
        for entry in all_docs:
            md.write(f'### `{entry["name"]}`\n')
            md.write(f'*Defined in*: `{os.path.relpath(entry["file"], PROJECT_ROOT)}`\n\n')
            md.write(f'{entry["doc"]}\n\n---\n\n')
        md.write(f'\n## Undocumented Functions ({len(all_undocumented)})\n\n')
        all_undocumented.sort(key=lambda x: x['name'])
        for entry in all_undocumented:
            md.write(f'- `{entry["name"]}` (in `{os.path.relpath(entry["file"], PROJECT_ROOT)}`)\n')

if __name__ == '__main__':
    main()