create table users (
  user_id serial primary key,
  user_email varchar(250),
  user_password varchar(100)
);
create table products (
  product_id serial primary key,
  product_image varchar(500),
  product_name varchar(250),
  product_description varchar(2000),
  product_price int,
  product_category varchar(250)
);
create table wishlists (
  user_id int references users(user_id),
  product_id int references products(product_id) wishlist_id int
);
insert into products (
    product_image,
    product_name,
    product_description,
    product_price,
    product_category
  )
values
  (
    -- DONT DO THIS ONE, IT IS ALREADY ADDED
    'https://images-na.ssl-images-amazon.com/images/I/71QSKpbzlQL._SL1500_.jpg',
    'NZXT H510 - CA-H510B-W1 - Compact ATX Mid-Tower PC Gaming Case - Front I/O USB Type-C Port - Tempered Glass Side Panel - Cable Management System - Water-Cooling Ready - White/Black',
    'The H510 compact mid-tower ATX cases looks stunning and is an excellent value, making it the ideal case when you want a small-footprint ATX case without sacrifice. Well-engineered airflow, removable radiator mounting bracket, flush tempered-glass window, multiple fan filters, and a front panel USB-C connector are just some of the key features.',
    69.99,
    'case'
  ),
  (
    'https://images-na.ssl-images-amazon.com/images/I/71Dg9B5mmpL._SL1500_.jpg',
    'Thermaltake V200 Tempered Glass RGB Edition 12V MB Sync Capable ATX Mid-Tower Chassis with 3 120mm 12V RGB Fan + 1 Black 120mm Rear Fan Pre-Installed CA-1K8-00M1WN-01',
    'Designed for PC builders who want a sleek, Custom looking case with great airflow and a crystal clear tempered glass panel – The versa V200 TG RGB is the ultimate mid-tower. This Special RGB version comes with three 120mm 12V RGB front fans that are Dual-Mode controllable either through the front I/O panels, or by connecting to compatible ASUS Gigabyte, MSI, as rock or BIOSTAR motherboards. The V200 TG RGB supports a huge range of air and liquid cooling hardware, high-end GPU and even a handy PSU cover in the basement. Dimensions (H x W x D): 17. 6” x 8. 3” x 17. 3”/ 446 x 204 x 439 mm Net weight: 7. 1 kg/ 15. 65 lb Case Type: Mid Tower Color: black Case Material: SPCC Cooling System Rear (exhaust) : 120 x 120 x 25 mm fan (1000rpm, 16dBA) Front (intake) : 120 x 120 x 25 mm RGB fan (1000rpm, 16dBA) x3 Side panel: 4mm tempered glass panel x1 Drive bays accessible: 3 x 2. 5“ hidden: 2 x 3. 5”Expansion slots: 7 I/O port: USB 3. 0 x 1, USB 2. 0 x 2, HD Audio x 1, RGB button x 1 Fan support: Front: 3 x 120mm, 2 x 140mm Top: 2 x 120mm, 2 x 140mm Rear: 1 x 120mm Radiator support: Front: 1 x 240mm, 1 x 280mm Rear: 1 x 120mm Clearance: Maximum CPU cooler height: 160mm Maximum PSU length: 170mm Maximum VGA length: 380mm : 3 years',
    79.99,
    'case'
  ),
  (
    'https://images-na.ssl-images-amazon.com/images/I/61m8x2T5-xL._SL1200_.jpg',
    'CORSAIR CARBIDE 275R Mid-Tower Gaming Case, Tempered Glass- Black (CC-9011132-WW)',
    'The CORSAIR Carbide Series 275R is a compact mid-tower ATX case that matches minimalist design and a beautiful tempered glass window with a straightforward interior layout and versatile cooling options. Room for up to a 360mm radiator in front, 240mm radiator in the roof, and a 120mm radiator in the rear allows you to fit any CORSAIR Hydro Series cooler or up to six 120mm cooling fans. A dedicated cable routing compartment and rubber grommets enable effortlessly clean builds and Direct Airflow Path() design provides airflow to the hottest components without any interference from drive cages. Compatible Corsair Liquid Coolers: H55, H60, H75, H80i, H90, H100i, H105, H110i, H115i, H150i',
    69.99,
    'case'
  ),
  (
    'https://images-na.ssl-images-amazon.com/images/I/51v2Fo5j3AL._SL1000_.jpg',
    'Phanteks Eclipse (PH-EC300PTG_BK) Steel ATX Mid Tower Tempered Glass Case, Black',
    'The new eclipse P300 continues to set new standards in quality for budget-friendly enclosures. It introduces an all new Framework that further enhances clean interior and exterior design with intuitive and convenient installation. Exceptional build quality in its class, featuring a full metal exterior with a tempered glass side panel. Everything you need to build your perfect system.',
    59.94,
    'case'
  ),
  (
    'https://images-na.ssl-images-amazon.com/images/I/817dFPgzSXL._SL1500_.jpg',
    'Cooler Master MasterBox TD500 Mesh White Airflow ATX Mid-Tower w/E-ATX Support, Polygonal Mesh Front Panel, Crystalline Tempered Glass & 3 ARGB Fans w/Controller',
    'The E-ATX MasterBox TD500 Mesh White takes airflow performance and turns it into an art form. Powered by three pre-installed ARGB fans, airflow is fed through a geometric, three-dimensional mesh front panel into a system viewed from a crystal-clear tempered glass side panel. The Crystalline Tempered Glass side panel is precision engineered for both its toughness and its aesthetics through CNC machining. Polygonal Mesh takes its form from Cooler Master’s Fine Mesh technology, simultaneously providing high airflow, dust filtration, and a strengthened structure. With advanced technology set firmly into fine art, the MasterBox TD500 Mesh White carves its own path to the bleeding edge.',
    99.99,
    'case'
  ),
  (
    'https://images-na.ssl-images-amazon.com/images/I/81MDB2HRaQL._SL1500_.jpg',
    'ASUS ROG Strix B450-F Gaming Motherboard (ATX) AMD Ryzen 2 AM4 DDR4 DP HDMI M.2 USB 3.1 Gen2 B450',
    'Experience next level performance with the ROG Strix B450 F Gaming, powered by 2nd generation AMD Ryzen AM4 processors. Unlock your systems potential with 5 Way Optimization featuring Fan Xpert 4 while personalizing your build with Aura Sync RGB. Integrated NVMe M.2, gigabit LAN and USB 3.1 Gen2 deliver maximum connectivity speeds.',
    122.99,
    'motherboard'
  ),
  (
    'https://images-na.ssl-images-amazon.com/images/I/91Rx29tuyAL._SL1500_.jpg',
    'Gigabyte B450M DS3H (AMD Ryzen AM4/M.2/HMDI/DVI/USB 3.1/DDR4/Micro ATX/Motherboard)',
    'Supports AMD 2nd Generation Ryzen/ Ryzen with Radeon Vega Graphics/ 1st Generation Ryzen Processors Dual Channel Non ECC Unbuffered DDR4, 4 DIMMs HDMI, DVI D Ports for Multiple Display Ultra Fast PCIe Gen3 x4 M.2 with PCIe NVMe and SATA mode support High Quality Audio Capacitors and Audio Noise Guard with LED Trace Path Lighting RGB Fusion supports RGB LED Strips in 7 Colors Realtek Gigabit LAN with cFosSpeed Internet Accelerator Software Smart Fan 5 Features 5 Temperature Sensors and 2 Hybrid Fan Headers with FAN STOP APP Center Including EasyTune and Cloud Station Utilities CEC 2019 Ready, Save Power with a Single Click. Micro ATX Form Factor; 24.4cm x 21.5cm.',
    71.99,
    'motherboard'
  ),
  (
    'https://images-na.ssl-images-amazon.com/images/I/91IxjuCDw8L._SL1500_.jpg',
    'MSI Performance Gaming AMD Ryzen 2ND and 3rd Gen AM4 M.2 USB 3 DDR4 DVI HDMI Crossfire ATX Motherboard (B450 Gaming Plus Max)',
    'Unlimited customization options and packed with exclusive gaming features, MSI performance Gaming motherboards offer the best possible gaming experience. Customize and set up your own color scheme with MSI Mystic Light utility. Select the available colors from the palette to match your system style. Bored of the same colors? Simply change the complete look of your system in 1 second! Cooling your PC is essential for reliable performance. Weve made sure to include enough fan Headers with full control to allow you to cool your system any way you want.',
    104.97,
    'motherboard'
  ),
  (
    'https://images-na.ssl-images-amazon.com/images/I/71IMyfar4SL._SL1200_.jpg',
    'ASRock B450 Steel Legend Socket AM4/ AMD Promontory B450/ DDR4/ Quad CrossFireX/ SATA3&USB3.1/ M.2/ A&GbE/ATX Motherboard',
    'ASRock B450 STEEL LEGEND Socket AM4/ AMD Promontory B450/ DDR4/ Quad CrossFireX/ SATA3&USB3. 1/ M. 2/ Age/ ATX Motherboard',
    108.99,
    'motherboard'
  ),
  (
    'https://images-na.ssl-images-amazon.com/images/I/71WPGXQLcLL._SL1384_.jpg',
    'AMD Ryzen 5 3600 6-Core, 12-Thread Unlocked Desktop Processor with Wraith Stealth Cooler',
    'The worlds most advanced processor in the desktop PC gaming segment, Can deliver ultra fast 100+ FPS performance in the worlds most popular games, 6 Cores and 12 processing threads, bundled with the Quiet AMD Wraith Stealth cooler, 4.2 GHz Max Boost, unlocked for overclocking, 35 MB of game Cache, ddr4 3200 support, For the advanced socket AM4 platform, can support PCIe 4.0 on x570 motherboards',
    174.99,
    'cpu'
  ),
  (
    'https://images-na.ssl-images-amazon.com/images/I/717Di3DGIbL._SL1092_.jpg',
    'AMD Ryzen 7 3700X 8-Core, 16-Thread Unlocked Desktop Processor with Wraith Prism LED Cooler',
    'Dominant Gaming and Streaming A beautifully balanced design for serious PC enthusiasts. Manufacturer: Advanced Micro Devices, Inc. Manufacturer Part Number: 100-100000071BOX. Brand Name: AMD. Product Line: Ryzen 7. Product Model: 3700X. Product Name: Ryzen 7 Octa-core 3700X 3.6Ghz Desktop Processor. Package Type: Retail. Product Type: Processor. [Technical Information] Processor Manufacturer: AMD. Processor Core: Octa-core (8 Core). Clock Speed: 3.60 GHz. Overclocking Speed: 4.40 GHz. L2 Cache: 4 MB. L3 Cache: 32 MB. 64-bit Processing: Yes. Process Technology: 7 nm. Processor Threads: 16. Processor Socket: Socket AM4. [Power Description] Thermal Design Power: 65 W.',
    298.99,
    'cpu'
  ),
  (
    'https://images-na.ssl-images-amazon.com/images/I/51Dx39HJ8kL._SL1000_.jpg',
    'AMD Ryzen 3 3200G 4-Core Unlocked Desktop Processor with Radeon Graphics',
    'Includes advanced Radeon Vega 8 graphics, no expensive Graphics card required, Can deliver smooth high definition performance in the worlds most popular games, 4 processing cores, bundled with the Quiet AMD Wraith Stealth cooler, 4.0 GHz Max Boost, unlocked for overclocking, 6 MB Cache, ddr 2933 support, For the advanced socket AM4 platform; Base Clock 3.6GHz',
    99.00,
    'cpu'
  ),
  (
    'https://images-na.ssl-images-amazon.com/images/I/71S31CWSs3L._SL1093_.jpg',
    'AMD Ryzen 9 3900X 12-core, 24-Thread Unlocked Desktop Processor with Wraith Prism LED Cooler',
    'The worlds most advanced processor in the desktop PC gaming segment, Can deliver ultra fast 100+ FPS performance in the worlds most popular games, 12 Cores and 24 processing threads, bundled with the AMD Wraith Prism cooler with color controlled LED support, 4.6 GHz Max Boost, unlocked for overclocking, 70 MB of game Cache, ddr 3200 support. Base Clock:3.8GHz, For the advanced socket AM4 platform, can support PCIe 4.0 on x570 motherboards',
    419.99,
    'cpu'
  ),
  (
    'a',
    'a',
    'a',
    1,
    'a'
  ),
  (
    'a',
    'a',
    'a',
    1,
    'a'
  ),
  (
    'a',
    'a',
    'a',
    1,
    'a'
  ),
  (
    'a',
    'a',
    'a',
    1,
    'a'
  ),