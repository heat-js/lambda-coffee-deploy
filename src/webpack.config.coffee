
import slsw				from 'serverless-webpack'
import nodeExternals 	from 'webpack-node-externals'

module.exports = {
	entry: slsw.lib.entries
	target: 'node'
	mode: 'production'
	node: {
		__dirname: false
		__filename: false
	}
	externals: [nodeExternals()]
	stats: 'minimal'
	optimization: {
		minimize: false
	}
	performance: {
    	# Turn off size warnings for entry points
		hints: false
	}
	module: {
		rules: [
			{
				loader: "coffee-loader"
				test: /\.coffee$/
			}
		]
	}
	resolve: {
		extensions: [ '.js', '.jsx', '.coffee' ]
	}
}
