require 'terminal-table'

module RunningTrack
	class Table

		SPLITTER = ';'

		def initialize data
			puts "[RunningTrack::Table]: Create running track table"
			@rows = prepare data
		end

		def print
			@table ||= create_table
			puts @table
		end

		private

		def prepare data			
			# rows = []
			# data.each_line do |line|
			# 	rows.push line.split(SPLITTER)
			# end
			# rows

			data.lines.map { |line| line.split(SPLITTER) }
		end

		def create_table
			puts "[RunningTrack::Table]: Create terminal table"
			headings = @rows.shift
			sep_rows = @rows.zip(Array.new(@rows.count-1) { :separator }).flatten(1).compact
			Terminal::Table.new headings: headings, rows: sep_rows
		end


	end
end