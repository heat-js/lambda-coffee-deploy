
import slsw from 'serverless-webpack'

module.exports = {
	entry: slsw.lib.entries
	target: 'node'
	packager: 'yarn'
	mode: 'production'
	node: {
		__dirname: false
		__filename: false
	}
	externals: {
		'aws-sdk': 'aws-sdk'
	}
	stats: 'minimal'
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
