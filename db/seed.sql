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
    'https://images-na.ssl-images-amazon.com/images/I/71-wxbmfleL._SL1500_.jpg',
    'HyperX Fury 8GB 2666MHz DDR4 CL16 DIMM 1Rx8  Black XMP Desktop Memory Single Stick HX426C16FB3/8',
    'HyperX FURY DDR4 features an updated heat spreader and speeds up to 3466MHz** for a stylish performance boost. FURY DDR4’s XMP-ready and available in 2400MHz–3466MHz speeds, CL15–16 latencies, 8GB and 16GB single module capacities, and 16GB–64GB kit capacities. It features Plug N Play automatic overclocking at 2400MHz and 2666MHz speeds and is compatible with the latest Intel and AMD CPUs. FURY DDR4 RGB’s backed by a lifetime , a worry-free, cost-effective upgrade. * HyperX PnP memory will run in most DDR4 systems up to the speed allowed by the manufacturers system BIOS. PnP cannot increase the system memory speed faster than is allowed by the manufacturers BIOS. AMD Ryzen systems will boot at the JEDEC default speed/latency with FURY. In order to enable the factory overclock speed and latency, Profile 1 must be selected in the BIOS.',
    36.99,
    'ram'
  ),
  (
    'https://images-na.ssl-images-amazon.com/images/I/61t3ZHqTgbL._SL1500_.jpg',
    'Corsair Vengeance LPX 8GB (1 x 8GB) DDR4 DRAM 2400MHz C16 (PC4-19200) Memory Kit Black (CMK8GX4M1A2400C16)',
    'Vengeance LPX memory is designed for high performance overclocking. The heat spreader is made of pure aluminum for faster heat dissipation, and the eight layer PCB helps manage heat and provides superior overclocking headroom. Each IC is individually screened for performance potential. The DDR4 form factor is optimized for the latest Intel X99 and 100 series motherboards and offers higher frequencies, greater bandwidth, and lower power consumption than DDR3 modules. Vengeance LPX DDR4 modules are compatibility tested across X99 and 100 Series motherboards for reliably fast performance. And, theyre available in multiple colors to match your motherboard, your components, or just your style. Memory configuration cual channel',
    34.99,
    'ram'
  ),
  (
    'https://images-na.ssl-images-amazon.com/images/I/71EXOwFSf-L._SL1500_.jpg',
    'Corsair Vengeance LPX 16GB (2x8GB) DDR4 DRAM 3000MHz C15 Desktop Memory Kit - Black (CMK16GX4M2B3000C15)',
    'Vengeance LPX memory is designed for high performance overclocking. The heat spreader is made of pure aluminum for faster heat dissipation, and the eight layer PCB helps manage heat and provides superior overclocking headroom. Each IC is individually screened for performance potential. The DDR4 form factor is optimized for the latest Intel 100 Series motherboards and offers higher frequencies, greater bandwidth, and lower power consumption than DDR3 modules. Vengeance LPX DDR4 modules are compatibility tested across 100 Series motherboards for reliably fast performance. Theres XMP 2.0 support for trouble free automatic overclocking. And, theyre available in multiple colors to match your motherboard, your components, or just your style. Memory Configuration Dual / Quad Channel',
    72.99,
    'ram'
  ),
  (
    'https://images-na.ssl-images-amazon.com/images/I/51H6Q9EgCYL._SL1280_.jpg',
    'Crucial Ballistix 3200 MHz DDR4 DRAM Desktop Gaming Memory Kit 16GB (8GBx2) CL16 BL2K8G32C16U4B (Black)',
    'Crucial Ballistix gaming memory is designed for high-performance overclocking and is ideal for gamers and performance enthusiasts looking to push beyond standard limits. With hundreds of awards, multiple esport championships, and numerous overclocking world records under its belt, Crucial Ballistix sets the standard for performance.',
    79.99,
    'ram'
  ),
  (
    'https://images-na.ssl-images-amazon.com/images/I/81yCLIhXB5L._SL1500_.jpg',
    'Asus GeForce GTX 1660 Super Overclocked 6GB Dual-Fan Evo Edition VR Ready HDMI DisplayPort DVI Graphics Card (DUAL-GTX1660S-O6G-EVO)',
    'Powered by NVIDIA Turing, the Asus dual-fan GTX 1660 Super EVO delivers overclocked performance with 6GB GDDR6 memory and patented Axial-Tech fans in a shroud designed to match Asus motherboards. Gpu Tweak II with XSplit Gamecaster provides monitoring and streaming control, while super Alloy Power II ensures precise power delivery.Memory Clock: 14002 MHz',
    239.99,
    'gpu'
  ),
  (
    'https://images-na.ssl-images-amazon.com/images/I/61pE8kBYykL._SL1024_.jpg',
    'MSI GAMING GeForce RTX 2060 6GB GDRR6 192-bit HDMI/DP Ray Tracing Turing Architecture VR Ready Graphics Card (RTX 2060 GAMING Z 6G)',
    'The much anticipated return of MSI iconic dual fan gaming Series. Combining a mix of black and Gunmetal grey with a classy brushed metal backplate, This masterpiece provides you Premium design with magnificent and smooth RGB light effects on the outside. The new MSI gaming card is designed to amaze you! The 7th generation of the famous MSI twin frozr thermal design brings the most advanced technology for ultimate Cooling performance. It features the new to RX fan 3.0 combined with groundbreaking aerodynamic feats. This means stable performance and a silent experience are guaranteed thanks to low temperatures. Get the most out of your MSI graphics card in terms of performance and experience almost unlimited customization options with the included software.',
    378.89,
    'gpu'
  ),
  (
    'https://images-na.ssl-images-amazon.com/images/I/81qeaFG-rKL._SL1500_.jpg',
    'EVGA GeForce RTX 2070 Super Gaming, 08G-P4-3071-KR, 8GB GDDR6',
    'The EVGA GeForce RTX K-series graphics cards are powered by the all-New NVIDIA Turing architecture to give you incredible New levels of gaming realism, speed, power efficiency, and immersion. With the EVGA GeForce RTX K-series gaming cards you get the best gaming experience with the next generation graphics performance, ice cold cooling, and advanced overclocking features with the all New EVGA Precision x1 software. The New NVIDIA GeForce RTX GPUs have reinvented graphics and set a New bar for performance. Powered by the New NVIDIA Turing GPU architecture and the revolutionary NVIDIA RTX platform, The New graphics cards bring together real-time Ray tracing, artificial intelligence, and programmable shading. This is not only a whole New way to experience games - this is the ultimate PC gaming experience.',
    509.99,
    'gpu'
  ),
  (
    'https://images-na.ssl-images-amazon.com/images/I/81ZjYu-JBpL._SL1500_.jpg',
    'ASUS ROG Strix GeForce RTX 2080 Super Advanced Overclocked 8G GDDR6 HDMI DP 1.4 USB Type-C Gaming Graphics Card (ROG-STRIX-RTX-2080S-A8G)',
    'ASUS ROG STRIX RTX 2080 SUPER A8G delivers legendary ROG power and performance with Turing Architecture from NVIDIA. Supporting up to 4 monitors plus a VR-Ready headset, each card features a reinforced frame, triple Axial-Tech fans with Max Contact technology for increased cooling, and Aura Sync RGB for customizing your lighting.',
    769.99,
    'gpu'
  ),
  (
    'https://images-na.ssl-images-amazon.com/images/I/61EVNBRpy4L._SL1000_.jpg',
    'Seagate BarraCuda 2TB Internal Hard Drive HDD – 3.5 Inch SATA 6Gb/s 7200 RPM 256MB Cache 3.5-Inch – Frustration Free Packaging (ST2000DM008)',
    'Store more, compute faster, and do it confidently with the proven reliability of BarraCuda internal hard drives. Perfect for designers, musicians, photographers, and video editors using multiple applications at once, these solutions offer uninterrupted performance, optimized read/write caching technology, and a variety of capacities and form factors to choose from. The result is a seamless experience backed by a two-year limited warranty and 20 years of hard drive innovation.',
    49.99,
    'storage'
  ),
  (
    'https://images-na.ssl-images-amazon.com/images/I/61YmZFwiXmL._SL1500_.jpg',
    'Seagate FireCuda Gaming (Compute) 2TB Solid State Hybrid Drive Performance SSHD – 2.5 Inch SATA 6GB/s Flash Accelerated for Gaming PC Laptop - Frustration Free Packaging (ST2000LX001)',
    'Ideal for consoles, gaming laptops and mini PCs, FireCuda SATA SSHD hard drives feature SSD performance and HDD capacities. Enjoy 7200 RPM speeds for a faster, seamless gaming experience—from loading maps to booting levels. Choose from a variety of speeds and cache for an optimized rig and enjoy low power consumption for a more cost effective setup. They even come with a five-year limited warranty for long-term peace of mind.',
    94.99,
    'storage'
  ),
  (
    'https://images-na.ssl-images-amazon.com/images/I/91JA5-hAnoL._SL1500_.jpg',
    'Samsung SSD 860 EVO 1TB 2.5 Inch SATA III Internal SSD (MZ-76E1T0B/AM)',
    'The SSD you trust: The newest edition to the worlds best-selling SATA SSD series, the Samsung 860 EVO SSD is specially designed to enhance performance of mainstream PCs and laptops. With the latest V-NAND technology, this fast and reliable Solid State Drive comes in a wide range of compatible form factors and capacities. Its enhanced performance delivers consistent speeds, even under heavy workloads and multi-tasking, allowing for faster file transfers. The 860 EVO performs at sequential read speeds of up to 550MB/s with Intelligent TurboWrite technology, and sequential write speeds of up to 520MB/s. The TurboWrite buffer size is upgraded from 12GB to 78GB (performance may vary based on users system hardware and configuration). The 860 EVO also offers boosted endurance of up to 8x higher TBW (Terabytes Written) than the 850 EVO. Feel secure storing and rendering large-sized 4K videos and 3D data used by the latest applications. The smart compatibility of the SSD lets you benefit from faster, more fluid communication with your host system. The refined ECC (Error Correction Code) algorithm and a new MJX controller generate higher speeds, and the improved queued trim enhances Linux compatibility. The 860 EVO provides reliability of 1.5 million hours (MTBF).',
    149.99,
    'storage'
  ),
  (
    'https://images-na.ssl-images-amazon.com/images/I/61U7T1koQqL._SL1500_.jpg',
    'SanDisk SSD PLUS 1TB Internal SSD - SATA III 6 Gb/s, 2.5"/7mm - SDSSDA-1T00-G26',
    'SanDisk, a pioneer in solid state storage technologies and the brand pros trust, delivers improved speed and performance with the SanDisk SSD Plus. With sequential read speeds of up to 535MB/s [480GB, 960GB and 1TB]; 530MB/s [120GB & 240GB], this solid state drive performs faster than a typical hard disk drive(1). Youll appreciate faster startups, shutdowns, data transfers, and application response times than with a hard disk drive(1). The SanDisk SSD Plus also offers quiet, reliable performance, and dashboard(4) status monitoring for your favorite media applications. | 1GB=1,000,000,000 bytes. Actual user storage less. | Based on internal testing; performance may vary depending upon drive capacity, host device, OS and application. 1MB=1,000,000 bytes. | (1) As compared to 5400 RPM SATA 2.5” hard drive. Based on published specifications and internal benchmarking tests using PCMark Vantage scores. | (3) Shock resistant (up to 1500G) and vibration resistant (5gRMS, 10-2000 HZ/4.9 gRMS, 7-800 HZ), Temperature (from 0 degrees Celcius to 70 degrees Celcius) | (4) Download required',
    109.99,
    'storage'
  ),
  (
    'https://images-na.ssl-images-amazon.com/images/I/7163oT1ia3L._SL1200_.jpg',
    'EVGA SuperNOVA 750 G3, 80 Plus Gold 750W, Fully Modular, Eco Mode with New HDB Fan, 10 Year Warranty, Includes Power ON Self Tester, Compact 150mm Size, Power Supply 220-G3-0750-X1',
    'Unleash the next generation in power with the EVGA SuperNOVA 750 G3 power supply. Based on the award winning G2 Series power supplies from EVGA, This power supply features 80 Plus Gold rated efficiency, and clean, continuous power to every component. The ECO thermal control fan system offers fan modes to provide zero fan noise during low load operations. This provides improved efficiency for longer operation, less power consumption, reduced energy costs and minimal heat dissipation. Backed by a 10 Year and Japanese capacitor design, the EVGA SuperNOVA 750 G3 is not only the right choice for your system today, it is also the best choice for your system tomorrow.',
    137.95,
    'psu'
  ),
  (
    'https://images-na.ssl-images-amazon.com/images/I/819onwYcKvL._SL1500_.jpg',
    'CORSAIR RMX Series, RM750x, 750 Watt, 80+ Gold Certified, Fully Modular Power Supply',
    'CORSAIR RM750x series power supplies are built with the highest quality components to deliver 80 PLUS Gold efficient power to your PC. Using only Japanese 105 DegreeC capacitors, users can depend on an RM750x PSUs long life and reliability, backed by a ten year warranty. Zero RPM Mode means an RM750x series PSU is virtually silent at low and medium loads, and even at maximum power, a low noise fan ensures quiet operation. Fully modular cables make PC builds and upgrades easy, as you only need to install the cables your system requires. Quiet, efficient and dependable, an RM750x PSU has everything you need to power your high performance PC for years to come. PC for years to come. Continuous output rated temperature: 50°C.',
    129.99,
    'psu'
  ),
  (
    'https://images-na.ssl-images-amazon.com/images/I/51v0RsvDIeL.jpg',
    'Corsair CX Series 550 Watt 80 Plus Bronze Certified Modular Power Supply (CP-9020102-NA)',
    'CX Series Modular power supply units are an excellent choice for basic system builds and desktop PC computer upgrades, offering high reliability, low noise, and easy installation. The flexible modular cabling system lets you use only the cables you need, and 80 PLUS Bronze certified efficiency means less excess heat, lower noise, and lower power bills. The large-diameter, thermally controlled fan makes the CX Series Modular quieter at idle, and reduces noise even when youre pushing your system hard. The matte black finish, black-sleeved cables and black connectors help give your system a restrained, high-tech look. Continuous output rated temperature C: 40°C.',
    179.99,
    'psu'
  ),
  (
    'https://images-na.ssl-images-amazon.com/images/I/71U%2BIlK%2B9jL._SL1432_.jpg',
    'Thermaltake Toughpower GX1 80+ Gold 500W SLI/Crossfire Ready Continuous Power ATX 12V V2.4/EPS V2.92 Non Modular Power Supply 5 Year Warranty PS-TPD-0500Nnfagu-1',
    'Built to deliver 80 Plus Gold efficiency, Tough power GX1 comes with capacities ranging from 500W to 700W, and the application of 120mm fluid Dynamic Bearing Fan, Japanese 105°c/221°f main capacitors and premium components. Its near silent operation, trouble free installation and reliable performance are making itself one of the best values for basic system upgrades.',
    60.99,
    'psu'
  ),
  (
    'https://images-na.ssl-images-amazon.com/images/I/71cnsrKZYjL._SL1500_.jpg',
    'Microsoft Windows 10 Home | USB Flash Drive',
    'With Windows 10 home, youll always have the latest features and security. Experience faster start ups, a familiar yet expanded start menu, and great new ways to get stuff done. Windows mixed reality requires a compatible Windows 10 PC and headset; PC Requirements may vary for available apps and content. Pc hardware Requirements may vary for games on Windows 10. Games sold separately. 4K functionality available with supported games, monitors, and graphics chips. Director 12 only available with supported games and graphics chips. Check PC to determine graphics chip compatibility. Windows hello biometrics require specialized hardware, including fingerprint reader, illuminated ir sensor or other biometric sensors and capable devices.',
    139.99,
    'os'
  ),
  (
    'https://images-na.ssl-images-amazon.com/images/I/7191gVHf8xL._SL1500_.jpg',
    'Microsoft Windows 10 Pro | USB Flash Drive',
    'Windows 10 gives you the best experience for starting fast and getting things done. Windows hello is the password-free sign-in that gives you the fastest, most secure way to unlock your Windows devices. Windows 10 delivers comprehensive protection - including antivirus, firewall, Internet protection, and more. Bitlocker data encryption and protection help keep your information safe. Hyper-v functionality lets you create virtual machines, while remote desktop allows you to log in from a different computer',
    199.99,
    'os'
  ),
  (
    'https://images-na.ssl-images-amazon.com/images/I/810epc7PeYL._SL1500_.jpg',
    'Skytech Shiva Gaming PC Desktop - AMD Ryzen 5 2600, NVIDIA RTX 2060, 16GB DDR4, 500G SSD, RGB Fans',
    'Processor AMD Ryzen 5 2600 6-Core 3 4 GHz (3 9 GHz Max Boost) processor Motherboard A320M Motherboard Video Card NVIDIA GeForce RTX 2060 6GB Video Card (Brand may vary) Memory 16GB DDR4 3000 Gaming Memory with Heat Spreader Power Supply 500 Watt 80 PLUS Certified Power Supply SSD 500GB SSD – Up to 30x Faster Than Traditional HDD Operating System Microsoft Windows 10 Home 64-bit Case Skytech mATX Mid-Tower Tempered Glass Gaming Case Fans 3 x 120mm Ring RGB Fans',
    999.00,
    'prebuild'
  ),
  (
    'https://images-na.ssl-images-amazon.com/images/I/81kVandDmdL._SL1500_.jpg',
    'CyberpowerPC Gamer Supreme Liquid Cool Gaming PC, Intel Core i7-9700K 3.6GHz, NVIDIA GeForce RTX 2070 Super 8GB, 16GB DDR4, 1TB PCI-E NVMe SSD, WiFi Ready & Win 10 Home (SLC8260A2, Black)',
    'Get the pinnacle of gaming performance with the Cyber PowerPC Gamer Supreme series of gaming computers. The Gamer Supreme series features monstrous processing power combined with the latest and greatest graphics cards to handle even the most demanding games on the market. An immense RAM allows you to easily tackle system-intensive applications such as video editing, and ensures a lag-free multitasking experience. A lightning-fast PCI-E NV Me SSD boot drive provides quick load times for your games and applications. The Gamer Supreme series looks as stunning as it performs, as all these high-end components are packaged in a striking, sleek chassis. Processor Speed (Base): 3.7 gigahertz.',
    1399.99,
    'prebuild'
  ),
  (
    'https://images-na.ssl-images-amazon.com/images/I/81GToTDrV5L._SL1500_.jpg',
    'iBUYPOWER Gaming PC Computer Desktop Element 9260 (Intel Core i7-9700F 3.0Ghz, NVIDIA GeForce GTX 1660 Ti 6GB, 16GB DDR4, 240GB SSD, 1TB HDD, WiFi & Windows 10 Home) Black',
    'Experience outstanding high performance from this Intel-powered iBUYPOWER gaming desktop PC. Whether you are looking for intense gaming, entertainment, streaming, content creation, research, or multitasking, this desktop tower rig will take you there! Our gaming computers are packed with powerful processing power & latest graphics, you will be able to tackle on tasks & system intensive programs quickly and efficiently without any lag time. This iBUYPOWER desktop tower is powered by an Intel Core i7-9700F Processor – designed for performance and reliability. This Ultra Gaming Desktop rig offers immersive graphics powered by NVIDIAs GeForce GTX 1660 Ti 6GB dedicated graphics card that will surely enhance your experience whether it is for your personal, gaming, or business needs. 16GB DDR4 will allow your PC to perform at fast optimal speeds with higher FPS in games. Experience with ease system-intensive applications and multitasking in streaming, video editing, or intense gaming. This computer comes with a 1TB SATA III hard drive and 240GB SSD that provides ample storage for all your favorite games and content. Equip yourself with this powerful gaming desktop and enjoy most demanding and popular games on the market today!',
    999.99,
    'prebuild'
  ),
  (
    'https://images-na.ssl-images-amazon.com/images/I/81rNjavDj3L._SL1500_.jpg',
    'Skytech Archangel Gaming Computer PC Desktop – RYZEN 5 2600X 6-Core 3.6 GHz, GTX 1660 6G, 500GB SSD, 16GB DDR4 3000MHz, RGB Fans, Windows 10 Home',
    'Why settle for mediocrity? Leap forward into Archangel series with the newest architectures. Featuring the newest RTX graphics technology and powered by AMD Ryzen 5 2600X 6-Core 3. 6 GHz (4. 2 GHz Turbo) Processor, the Archangel delivers the best price-to-performance value gaming rig in the market. The Skytech Archangel offers the best gaming computer built up to date to easily run popular games such as World of Warcraft, League of Legends, Grand Theft Auto V, Apex Legends, Fortnite, Roblox, PLAYERUNKNOWN’s Battlegrounds, Overwatch, Counter-Strike: Global Offensive, Battlefield V, Minecraft, The Division 2, and more at Ultra settings, detailed 1440p Quad HD resolution and smooth 60+ FPS gameplay.',
    799.99,
    'prebuild'
  )