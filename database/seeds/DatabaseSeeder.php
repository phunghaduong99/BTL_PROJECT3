<?php

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('districts')->insert([
        	['name'=>'Ba Đình','slug'=>'ba-dinh'],
        	['name'=>'Ba Vì','slug'=>'ba-vi'],
        	['name'=>'Bắc Từ Liêm','slug'=>'bac-tu-liem'],
        	['name'=>'Cầu Giấy','slug'=>'cau-giay'],
        	['name'=>'Chương Mỹ','slug'=>'chuong-my'],
        	['name'=>'Đan Phượng','slug'=>'dan-phuong'],
        	['name'=>'Đông Anh','slug'=>'dong-anh'],
        	['name'=>'Đống Đa','slug'=>'dong-da'],
        	['name'=>'Gia Lâm','slug'=>'gia-lam'],
        	['name'=>'Hà Đông','slug'=>'ha-dong'],
        	['name'=>'Hai Bà Trưng','slug'=>'hai-ba-trung'],
        	['name'=>'Hoài Đức','slug'=>'hoai-duc'],
        	['name'=>'Hoàn Kiếm','slug'=>'hoan-kiem'],
        	['name'=>'Hoàng Mai','slug'=>'hoang-mai'],
        	['name'=>'Long Biên','slug'=>'long-bien'],
        	['name'=>'Mê Linh','slug'=>'me-linh'],
        	['name'=>'Mỹ Đức','slug'=>'my-duc'],
        	['name'=>'Nam Từ Liêm','slug'=>'nam-tu-liem'],
        	['name'=>'Phú Xuyên','slug'=>'phu-xuyen'],
        	['name'=>'Phúc Thọ','slug'=>'phuc-tho'],
        	['name'=>'Quốc Oai','slug'=>'quoc-oai'],
        	['name'=>'Sóc Sơn','slug'=>'soc-son'],
        	['name'=>'Sơn Tây','slug'=>'son-tay'],
        	['name'=>'Tây Hồ','slug'=>'tay-ho'],
        	['name'=>'Thạch Thất','slug'=>'thach-that'],
        	['name'=>'Thanh Oai','slug'=>'thanh-oai'],
        	['name'=>'Thanh Trì','slug'=>'thanh-tri'],
        	['name'=>'Thanh Xuân','slug'=>'thanh-xuan'],
        	['name'=>'Thường Tín','slug'=>'thuong-tin'],
        	['name'=>'Ứng Hòa','slug'=>'ung-hoa']
        ]);

        $this->call(CategoriesSeeder::class);
        $this->call(UsersSeeder::class);
        $this->call(MotelRoomsSeeder::class);
    }
}
/**
* 
*/
class CategoriesSeeder extends Seeder
{
    public function run(){
        DB::table('categories')->insert([
            ['name'=>'Phòng trọ cho thuê','slug'=>'phong-tro-cho-thue'],
            ['name'=>'Ở ghép','slug'=>'o-ghep'],
            ['name'=>'Nhà nguyên căn','slug'=>'nha-nguyen-can'],
            ['name'=>'Chung cư','slug'=>'chung-cu']
        ]);
    }
}
class UsersSeeder extends Seeder
{
    public function run(){
        DB::table('users')->insert([
            ['name'=>'duong dai ca',
                'username'=>'admin@gmail.com',
                'email' => 'phunghaduong99@gmail.com',
                'password' => '$2y$10$LEEPDPTd.4hEV50ywDbnhuYVrstBSHSHa16jgCGjiLzHKtoQUgRfu',
                'right' => 1,
                'phone' => null,
                'avatar' => 'no-avatar.jpg',
                'remember_token' => null,
                'created_at' => '2021-01-07 14:46:35',
                'updated_at' => '2021-01-07 14:46:35',
                'tinhtrang' => '1',
            ],
        ]);
    }
}
class MotelRoomsSeeder extends Seeder
{
    public function run(){
        DB::table('motelrooms')->insert([
            ['title'=>'Cho thuê phòng trọ Định Công Hạ 25m²',
                'description'=>'
                    Phòng đâu mặt đường cho thuê.
                    Địa chỉ: SN 18, ngách 99/110/65 định công hạ, hoàng mai, hà nội. 
                    Không chung chủ, giờ giấc tự do.
                    Ưu tiên ở hộ gia đình lâu dài.
                    Giá: 2tr5
                    Cọc 1 tháng: 2tr5.
                    Có điều hoà, bình nóng lạnh, internet, giường, gác xép....
                    Ảnh như hình đình kèm.
                    Lh: chị Lan ',
                'price' => 2500000,
                'area' => 25,
                'count_view' => 8,
                'address' => 'Ngách 99/110/65, Đường Định Công Hạ, Phường Định Công, Quận Hoàng Mai, Hà Nội',
                'latlng' => '{"0":"20.977301","1":"105.829498"}',
                'images' => '{"0":"phongtro-6O7N4-32783828_1207853946018675_1556571610645790720_n.jpg"}',
                'user_id' => 1,
                'category_id' => 1,
                'district_id' => 14,
                'utilities' => '{\"0\":\"Wifi mi\\u1ec5n ph\\u00ed\",\"1\":\"C\\u00f3 g\\u00e1c l\\u1eedng\",\"2\":\"Kh\\u00f4ng chung ch\\u1ee7\",\"3\":\"V\\u1ec7 sinh ri\\u00eang\"}',
                'created_at' => '2020-05-18 22:50:01',
                'updated_at' => '2020-05-24 07:24:34',
                'phone' => '0915325633',
                'approve' => 1,
                'slug' => 'cho-thue-phong-tro-25m2-hoangmai-hanoi',
                ],
            ['title'=>'Cho thuê phòng trọ Tạ Quang Bửu 30m²',
                'description'=>'
                    Phòng đâu mặt đường cho thuê.
                    Địa chỉ: 15 Tạ Quang Bửu, Hai Bà Trưng, Hà Nội. 
                    Không chung chủ, giờ giấc tự do.
                    Ưu tiên ở hộ gia đình lâu dài.
                    Giá: 4tr5
                    Cọc 1 tháng: 2tr5.
                    Có điều hoà, bình nóng lạnh, internet, giường, gác xép....
                    Ảnh như hình đình kèm.
                    Lh: chị Phương ',
                'price' => 4500000,
                'area' => 30,
                'count_view' => 9,
                'address' => '15 Tạ Quang Bửu, Hai Bà Trưng, Hà Nội',
                'latlng' => '{"0":"21.005640","1":"105.847940"}',
                'images' => '{"0":"phongtro-i1mYa-nguyencan2.jpg"}',
                'user_id' => 1,
                'category_id' => 2,
                'district_id' => 11,
                'utilities' => '{\"0\":\"Wifi mi\\u1ec5n ph\\u00ed\",\"1\":\"C\\u00f3 g\\u00e1c l\\u1eedng\",\"2\":\"Kh\\u00f4ng chung ch\\u1ee7\",\"3\":\"V\\u1ec7 sinh ri\\u00eang\"}',
                'created_at' => '2020-10-18 22:50:01',
                'updated_at' => '2020-11-24 07:24:34',
                'phone' => '0915325634',
                'approve' => 1,
                'slug' => 'cho-thue-phong-tro-30m2-haibatrung-hanoi',
            ],
            ['title'=>'Cho thuê phòng trọ Long Biên 50m²',
                'description'=>'
                    Phòng đâu mặt đường cho thuê.
                    Địa chỉ: Số Nhà 6 Ngách 15 Ngõ 193 Phúc Lợi Quận Long Biên Hà Nội. 
                    Không chung chủ, giờ giấc tự do.
                    Ưu tiên ở hộ gia đình lâu dài.
                    Giá: 7tr5
                    Cọc 1 tháng: 6tr5.
                    Có điều hoà, bình nóng lạnh, internet, giường, gác xép....
                    Ảnh như hình đình kèm.
                    Lh: chị Phương ',
                'price' => 7500000,
                'area' => 50,
                'count_view' => 9,
                'address' => 'Số Nhà 6 Ngách 15 Ngõ 193 Phúc Lợi Quận Long Biên Hà Nội',
                'latlng' => '{"0":"21.02038324730884","1":" 105.93791173456115"}',
                'images' => '{"0":"2.png"}',
                'user_id' => 1,
                'category_id' => 3,
                'district_id' => 15,
                'utilities' => '{\"0\":\"Wifi mi\\u1ec5n ph\\u00ed\",\"1\":\"C\\u00f3 g\\u00e1c l\\u1eedng\",\"2\":\"Kh\\u00f4ng chung ch\\u1ee7\",\"3\":\"V\\u1ec7 sinh ri\\u00eang\"}',
                'created_at' => '2020-12-18 22:50:01',
                'updated_at' => '2020-12-24 07:24:34',
                'phone' => '0915326634',
                'approve' => 1,
                'slug' => 'cho-thue-phong-tro-50m2-longbien-hanoi',
            ],
            ['title'=>'Cho thuê phòng trọ Long Biên 50m²',
                'description'=>'
                    Phòng đâu mặt đường cho thuê.
                    Địa chỉ: Số nhà 6, Ngách 41/15, Ngõ thái thịnh 1 , Phố Thái Thịnh 1, Phường Thịnh Quang, Quận Đống Đa, Thành phố Hà Nội. 
                    Không chung chủ, giờ giấc tự do.
                    Ưu tiên ở hộ gia đình lâu dài.
                    Giá: 6tr5
                    Cọc 1 tháng: 3tr5.
                    Có điều hoà, bình nóng lạnh, internet, giường, gác xép....
                    Ảnh như hình đình kèm.
                    Lh: chị Phương ',
                'price' => 6500000,
                'area' => 45,
                'count_view' => 19,
                'address' => 'Số nhà 6, Ngách 41/15, Ngõ thái thịnh 1 , Phố Thái Thịnh 1, Phường Thịnh Quang, Quận Đống Đa, Thành phố Hà Nội',
                'latlng' => '{"0":"21.010816180727332","1":"105.81769953906938"}',
                'images' => '{"0":"1.jpg"}',
                'user_id' => 1,
                'category_id' => 4,
                'district_id' => 8,
                'utilities' => '{\"0\":\"Wifi mi\\u1ec5n ph\\u00ed\",\"1\":\"C\\u00f3 g\\u00e1c l\\u1eedng\",\"2\":\"Kh\\u00f4ng chung ch\\u1ee7\",\"3\":\"V\\u1ec7 sinh ri\\u00eang\"}',
                'created_at' => '2020-10-18 22:50:01',
                'updated_at' => '2020-10-24 07:24:34',
                'phone' => '0915321634',
                'approve' => 1,
                'slug' => 'cho-thue-phong-tro-50m2-dongda-hanoi',
            ],
        ]);
    }
}