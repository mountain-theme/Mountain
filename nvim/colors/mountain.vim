lua << EOF
package.loaded['mountain'] = nil
package.loaded['mountain.util'] = nil
package.loaded['mountain.colors'] = nil
package.loaded['mountain.theme'] = nil
package.loaded['mountain.functions'] = nil

require('mountain').set()
EOF
