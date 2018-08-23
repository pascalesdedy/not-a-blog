class WeathersController < ApplicationController
require 'open-uri'

def index
	doc = Nokogiri::XML(open("http://data.bmkg.go.id/datamkg/MEWS/DigitalForecast/DigitalForecast-DIYogyakarta.xml"))
    doc.remove_namespaces!

	@cek = 	doc.xpath("//area[@description='Yogyakarta']//parameter[@id='tmax']//@day").inner_text


	@day = doc.xpath("//day").text
	@month = doc.xpath("//month").text
	@year = doc.xpath("//year").text



	@kab_yk = doc.xpath("//area[@description='Yogyakarta']//name[@lang='id_ID']").text
	@humax_yk = doc.xpath("//area[@description='Yogyakarta']//parameter[@id='humax']").text
	@humin_yk = doc.xpath("//area[@description='Yogyakarta']//parameter[@id='humin']").text
	@tmax_yk = doc.xpath("//area[@description='Yogyakarta']//parameter[@id='tmax']").text
 	@tmin_yk = doc.xpath("//area[@description='Yogyakarta']//parameter[@id='tmin']").text 

	@kab_btl = doc.xpath("//area[@description='Bantul']//name[@lang='id_ID']").text
	@humax_btl = doc.xpath("//area[@description='Bantul']//parameter[@id='humax']").text
	@humin_btl = doc.xpath("//area[@description='Bantul']//parameter[@id='humin']").text
	@tmax_btl = doc.xpath("//area[@description='Bantul']//parameter[@id='tmax']").text
 	@tmin_btl = doc.xpath("//area[@description='Bantul']//parameter[@id='tmin']").text 

	@kab_slm = doc.xpath("//area[@description='Sleman']//name[@lang='id_ID']").text
	@humax_slm = doc.xpath("//area[@description='Sleman']//parameter[@id='humax']").text
	@humin_slm = doc.xpath("//area[@description='Sleman']//parameter[@id='humin']").text
	@tmax_slm = doc.xpath("//area[@description='Sleman']//parameter[@id='tmax']").text
 	@tmin_slm = doc.xpath("//area[@description='Sleman']//parameter[@id='tmin']").text 

	@kab_kp = doc.xpath("//area[@description='Wates']//name[@lang='id_ID']").text
	@humax_kp = doc.xpath("//area[@description='Wates']//parameter[@id='humax']").text
	@humin_kp = doc.xpath("//area[@description='Wates']//parameter[@id='humin']").text
	@tmax_kp = doc.xpath("//area[@description='Wates']//parameter[@id='tmax']").text
 	@tmin_kp = doc.xpath("//area[@description='Wates']//parameter[@id='tmin']").text 

 	@kab_gk = doc.xpath("//area[@description='Wonosari']//name[@lang='id_ID']").text
	@humax_gk = doc.xpath("//area[@description='Wonosari']//parameter[@id='humax']").text
	@humin_gk = doc.xpath("//area[@description='Wonosari']//parameter[@id='humin']").text
	@tmax_gk = doc.xpath("//area[@description='Wonosari']//parameter[@id='tmax']").text
 	@tmin_gk = doc.xpath("//area[@description='Wonosari']//parameter[@id='tmin']").text 

 	#@jogja = @doc.xpath("//area//parameter[@id='hu']").text






 	

end




end
