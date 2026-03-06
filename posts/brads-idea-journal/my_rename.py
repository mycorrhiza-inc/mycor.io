import os

def rename_files(directory):
    """Rename files in the specified directory by stripping leading '._' and changing extension from '.Rmd.Xmd' to '.Zmd'."""
    for filename in os.listdir(directory):
        if filename.startswith('._') and filename.endswith('.Rmd.Xmd'):
            new_name = filename[2:-8] + '.Zmd'
            old_path = os.path.join(directory, filename)
            new_path = os.path.join(directory, new_name)
            os.rename(old_path, new_path)
            print(new_path)
    return "Renaming completed."

if __name__ == '__main__':
    directory = "." 
    result = rename_files(directory)
    print(result)
