create database tech_data;
use tech_data;
-- TABLA DE DATOS PARA PAISES (INCLUYEN LAS CATEGORIAS)
create table data_countrys (
    `Country_Code`    VARCHAR(40), 
    `Indicator_Code`  VARCHAR(40),
    `1990`            DECIMAL(30,10),
    `1991`            DECIMAL(30,10),
    `1992`            DECIMAL(30,10),
    `1993`            DECIMAL(30,10), 
    `1994`  DECIMAL(30,10),
    `1995`  DECIMAL(30,10),
    `1996`  DECIMAL(30,10),
    `1997`  DECIMAL(30,10),
    `1998`  DECIMAL(30,10),
    `1999`  DECIMAL(30,10),
    `2000`  DECIMAL(30,10),
    `2001`  DECIMAL(30,10),
    `2002`  DECIMAL(30,10),
    `2003`  DECIMAL(30,10),
    `2004`  DECIMAL(30,10),
    `2005`  DECIMAL(30,10),
    `2006`  DECIMAL(30,10),
    `2007`  DECIMAL(30,10),
    `2008`  DECIMAL(30,10), 
    `2009`  DECIMAL(30,10),
    `2010`  DECIMAL(30,10),
    `2011`  DECIMAL(30,10),
    `2012`  DECIMAL(30,10), 
    `2013`  DECIMAL(30,10),
    `2014`  DECIMAL(30,10),
    `2015`  DECIMAL(30,10),
    `2016`  DECIMAL(30,10),
    `2017`  DECIMAL(30,10),
    `2018`  DECIMAL(30,10),
    `2019`  DECIMAL(30,10),
    `2020`  DECIMAL(30,10),
    `2021`  DECIMAL(30,10)
    )ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
    
LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\Data.csv'
INTO TABLE `data_countrys` 
FIELDS TERMINATED BY ',' ENCLOSED BY '' ESCAPED BY '' 
LINES TERMINATED BY '\n' IGNORE 1 LINES;
-- END

--
DROP TABLE indicadores;
create table indicadores (
	`INDICATOR_CODE` VARCHAR(40), 
    `INDICATOR_NAME` VARCHAR(100), 
    `SOURCE_NOTE` VARCHAR(600),
    `SOURCE_ORGANIZATION` VARCHAR(250)
    )ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO indicadores VALUES('TX.VAL.TECH.MF.ZS','Exportaciones de productos de alta tecnología (% de las exportaciones de productos manufacturados)','Las exportaciones de productos de alta tecnología son productos altamente intensivos en investigación y desarrollo, como son los productos de las industrias aeroespacial, informática, farmacéutica, de instrumentos científicos y de maquinaria eléctrica.','Base de datos Comtrade de las Naciones Unidas'),
							  ('TX.VAL.TECH.CD','Exportaciones de productos de alta tecnología (US$ a precios actuales)',"Las exportaciones de productos de alta tecnología son productos altamente intensivos en investigación y desarrollo, como son los productos de las industrias aeroespacial, informática, farmacéutica, de instrumentos científicos y de maquinaria eléctrica. Datos en US$ a precios actuales.",'Base de datos Comtrade de las Naciones Unidas.'),
                              ('SP.POP.TECH.RD.P6','Técnicos de investigación y desarrollo (por cada millón de personas)',"Los técnicos de investigación y desarrollo y el personal equivalente son personas cuyas tareas principales exigen conocimiento técnico y experiencia en ingeniería, ciencias naturales (técnicos), o ciencias sociales y humanidades (personal equivalente). Participan en investigación y desarrollo realizando tareas científicas y técnicas que abarcan la aplicación de conceptos y métodos operativos, por lo general supervisados por investigadores.","Instituto de Estadística de la Organización de las Naciones Unidas para la Educación, la Ciencia y la Cultura (UNESCO)."),
                              ('SP.POP.SCIE.RD.P6','Investigadores dedicados a investigación y desarrollo (por cada millón de personas)',"Los investigadores dedicados a investigación y desarrollo son profesionales que se dedican al diseño o creación de nuevos conocimientos, productos, procesos, métodos o sistemas, y a la gestión de los proyectos correspondientes. Se incluyen los estudiantes de doctorados (nivel 6 de la CINE 97 ) dedicados a investigación y desarrollo.","Instituto de Estadística de la Organización de las Naciones Unidas para la Educación, la Ciencia y la Cultura (UNESCO)."),
                              ('IP.PAT.RESD',"Solicitudes de patentes, residentes",'Solicitudes de patente son las solicitudes de patente presentadas en todo el mundo a través del procedimiento del Tratado de Cooperación en materia de Patentes o en una oficina nacional de patentes por los derechos exclusivos sobre un invento: un producto o proceso que presenta una nueva manera de hacer algo o una nueva solución técnica a un problema. Una patente brinda protección respecto de la invención al dueño de la patente durante un período limitado que suele abarcar 20 años.',"Organización Mundial de la Propiedad  Intelectual (OMPI), Indicadores mundiales de propiedad intelectual y www.wipo.int/econ_stat. La Oficina Internacional de la OMPI no  se hace responsable sobre la transformación de estos datos."),
                              ('IP.PAT.NRES',"Solicitudes de patentes, no residentes",'Solicitudes de patente son las solicitudes de patente presentadas en todo el mundo a través del procedimiento del Tratado de Cooperación en materia de Patentes o en una oficina nacional de patentes por los derechos exclusivos sobre un invento: un producto o proceso que presenta una nueva manera de hacer algo o una nueva solución técnica a un problema. Una patente brinda protección respecto de la invención al dueño de la patente durante un período limitado que suele abarcar 20 años.',"Organización Mundial de la Propiedad  Intelectual (OMPI), Indicadores mundiales de propiedad intelectual y www.wipo.int/econ_stat. La Oficina Internacional de la OMPI no  se hace responsable sobre la transformación de estos datos."),
                              ('IP.JRN.ARTC.SC','Artículos en publicaciones científicas y técnicas',"Los artículos en publicaciones científicas y técnicas se refieren a la serie de artículos científicos y de ingeniería publicados en los siguientes campos: física, biología, química, matemática, medicina clínica, investigación biomédica, ingeniería y tecnología, y ciencias de la tierra y el espacio.","Fundación Nacional de la Ciencia, indicadores de ciencia e ingeniería."),
                              ('GB.XPD.RSDV.GD.ZS','Gasto en investigación y desarrollo (% del PIB)',"Los gastos en investigación y desarrollo son gastos corrientes y de capital (público y privado) en trabajo creativo realizado sistemáticamente para incrementar los conocimientos, incluso los conocimientos sobre la humanidad, la cultura y la sociedad, y el uso de los conocimientos para nuevas aplicaciones. El área de investigación y desarrollo abarca la investigación básica, la investigación aplicada y el desarrollo experimental.","Instituto de Estadística de la Organización de las Naciones Unidas para la Educación, la Ciencia y la Cultura (UNESCO)."),
                              ('BX.GSR.ROYL.CD',"Cargos por el uso de propiedad intelectual, recibos (balanza de pagos, US$ a precios actuales)","Las regalias y tarifas de licencia son pagos y cobros entre residentes y no residentes por el uso autorizado de activos intangibles, no financieros, no fabricados, y derechos de propiedad (como patentes, derechos de autor, marcas registradas, procesos industriales y franquicias) y por el uso, en virtud de contratos de licencia, de originales producidos de prototipos (como películas y manuscritos). Datos en US$ a precios actuales.","Fondo Monetario Internacional, Anuario de Estadísticas de balanza de pagos y archivos de datos."),
                              ('BM.GSR.ROYL.CD',"Cargos por el uso de propiedad intelectual, pagos (balanza de pagos, US$ a precios actuales)","Las regalias y tarifas de licencia son pagos y cobros entre residentes y no residentes por el uso autorizado de activos intangibles, no financieros, no fabricados, y derechos de propiedad (como patentes, derechos de autor, marcas registradas, procesos industriales y franquicias) y por el uso, en virtud de contratos de licencia, de originales producidos de prototipos (como películas y manuscritos). Datos en US$ a precios actuales.","Fondo Monetario Internacional, Anuario de Estadísticas de balanza de pagos y archivos de datos.");


DROP TABLE if exists countrys;
CREATE TABLE countrys (
	`Country_Name` 	VARCHAR(100),
    `Country_Code` 	varchar(100),
    `Region` 		VARCHAR(200),
    `Income_Group`	VARCHAR(200)
    )ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\country.csv'
INTO TABLE `countrys` 
FIELDS TERMINATED BY ',' ENCLOSED BY '' ESCAPED BY '' 
LINES TERMINATED BY '\n' IGNORE 1 LINES;

-- NOTA: AGREGAR RELACIONES ENTRE TABLAS 