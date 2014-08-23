require 'check_weather'

class CheckWeather;
	include Weather;
end

describe CheckWeather do

	it 'should know what the weather is' do
	check_weather = CheckWeather.new
	expect(["sunny", "storm"]).to include(check_weather.weather)
	end

end