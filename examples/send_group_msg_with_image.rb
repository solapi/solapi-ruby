require '../lib/storage.rb'
require '../lib/group.rb'

res = Storage.upload(File.realpath('./testImage.jpg'))
fileId = res['fileId']

group_id = Group.create['groupId']
res = Group.add_messages(group_id, [
  {
    to: '01000000001',
    from: '029302266',
    text: '발송 예제 메시지',
    imageId: fileId
  }
])

res = Group.send(group_id)
puts res
