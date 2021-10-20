**Generate a single `.json` file with the licenses of all Swift Package Manager dependencies of an Xcode project**

* Python 3
* Swift Package Manager dependencies only
* Tested with Xcode 13.0

## Usage Example

As part of an Xcode target's 'Run Script' build phase:

`$SRCROOT/generate-licenses.py --build-dir $BUILD_DIR --output-file $SRCROOT/licenses.json`

### Additional Params

- Use `-p $PROJECT_DIR/ProjectName.xcodeproj` to load the version and url info from `Package.resolved` in the project

- Use `-w $PROJECT_DIR/WorkspaceName.xcworkspace` to load the version and url info from `Package.resolved` file in the workspace

### Notes

- If both options are specified, `-w` will be ignored 

- `libraryName` is the name of the repo and `name` is the name of the SPM Package as defined be the dependency in `Package.swift` 

- `text` field will be missing if a dependency does not provice a license file at the root of the repo

## Output Format

```json
{
    "licenses": [
        {
            "libraryName": "",
            "text": "",
            "name": "",
            "version": "",
            "url": ""
        },
        {
            ...
        }
    ]
}
```