# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(name: 'blnkt', email: 'blnkt@blnkt.com', password: 'password', password_confirmation: 'password')

oneb = Plot.create(user_id: 1, show_name: 'Seinfeld', bplot: true, title: 'The Pledge Drive', season: '6', episode: '3')
onea = Plot.create(user_id: 1, show_name: 'Seinfeld', aplot: true, title: 'The Pledge Drive', season: '6', episode: '3')

twob = Plot.create(user_id: 1, show_name: 'Seinfeld', bplot: true, title: 'The Stand-In', season: '5', episode: '16')
twoa = Plot.create(user_id: 1, show_name: 'Seinfeld', aplot: true, title: 'The Stand-In', season: '5', episode: '16')

threeb = Plot.create(user_id: 1, show_name: 'Seinfeld', bplot: true, title: 'The Barber', season: '5', episode: '8')
threea = Plot.create(user_id: 1, show_name: 'Seinfeld', aplot: true, title: 'The Barber', season: '5', episode: '8')

pledge_drive_scenes_a = [
['00:01', '03:02'],
['04:38', '09:52'],
['10:45', '14:46'],
['17:17', '19:00'],
['19:20', '21:30'],
['22:06', '23:20'],
['23:23', '24:12']
]

pledge_drive_scenes_b = [
['00:01', '03:03'],
['03:03', '04:38'],
['06:52', '09:52'],
['09:52', '10:45'],
['11:30', '12:50'],
['14:47', '16:40'],
['23:23', '24:12']
]

pledge_drive_scenes_a.each do |start_time, end_time|
  onea.scenes.create(user_id: 1, youtube_id: '8u8k8tQeauE', start_time: start_time, end_time: end_time)
end

pledge_drive_scenes_b.each do |start_time, end_time|
  oneb.scenes.create(user_id: 1, youtube_id: '8u8k8tQeauE', start_time: start_time, end_time: end_time)
end

the_stand_in_scenes_a = [
['00:01', '02:03'],
['05:10', '06:30'],
['09:57', '11:25'],
['13:54', '15:16'],
['18:53', '19:54'],
['23:20', '24:12']
]

the_stand_in_scenes_b = [
['00:01', '02:03'],
['02:03', '03:57'],
['04:14', '05:09'],
['09:09', '11:25'],
['11:46', '13:54'],
['15:16', '18:52'],
['18:52', '20:40'],
['22:35', '23:18']
]

the_stand_in_scenes_a.each do |start_time, end_time|
  twoa.scenes.create(user_id: 1, youtube_id: 'w8K4HQKzsDk', start_time: start_time, end_time: end_time)
end

the_stand_in_scenes_b.each do |start_time, end_time|
  twob.scenes.create(user_id: 1, youtube_id: 'w8K4HQKzsDk', start_time: start_time, end_time: end_time)
end

the_barber_scenes_a = [
['00:01', '03:22'],
['04:15', '06:17'],
['06:17', '08:19'],
['08:19', '10:00'],
['15:01', '16:14'],
['21:36', '22:49'],
['23:30', '24:08']
]

the_barber_scenes_b = [
['01:27', '06:17'],
['08:19', '15:00'],
['16:14', '18:34'],
['18:34', '19:04'],
['19:05', '21:35'],
['22:50', '23:28']
]

the_barber_scenes_a.each do |start_time, end_time|
  threea.scenes.create(user_id: 1, youtube_id: '0gH9myZgLo8', start_time: start_time, end_time: end_time)
end

the_barber_scenes_b.each do |start_time, end_time|
  threeb.scenes.create(user_id: 1, youtube_id: '0gH9myZgLo8', start_time: start_time, end_time: end_time)
end
