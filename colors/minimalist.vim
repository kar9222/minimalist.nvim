lua << EOF
package.loaded['minimalist'] = nil
package.loaded['minimalist.util'] = nil
package.loaded['minimalist.colors'] = nil
package.loaded['minimalist.theme'] = nil
package.loaded['minimalist.functions'] = nil

require('minimalist').set()
EOF
