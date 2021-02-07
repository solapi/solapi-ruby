require '../lib/message.rb'

# SMS 발송 (최대 1만건 동시 발송)
res = Message.send_many([
  {
    to: '01000000001',
    from: '029302266',
    text: '한글 45자, 영자 90자 이하 입력되면 자동으로 SMS타입의 메시지가 발송됩니다.'
  },
  {
    to: '01000000002',
    from: '029302266',
    text: '한글 45자, 영자 90자 이상 입력되면 자동으로 LMS타입의 문자메시지가 발송됩니다. 0123456789 ABCDEFGHIJKLMNOPQRSTUVWXYZ'
  },
  {
    type: 'SMS',
    to: '01000000003',
    from: '029302266',
    text: 'SMS 타입에 한글 45자, 영자 90자 이상 입력되면 오류가 발생합니다. 0123456789 ABCDEFGHIJKLMNOPQRSTUVWXYZ'
  },
  {
    to: [ '01000000004', '01000000005' ], # 수신번호를 array로 입력하면 같은 내용을 여러명에게 보낼 수 있습니다.
    from: '029302266',
    text: '한글 45자, 영자 90자 이상 입력되면 자동으로 LMS타입의 문자메시지가 발송됩니다. 0123456789 ABCDEFGHIJKLMNOPQRSTUVWXYZ'
  }
  # ...
  # 1만건까지 추가 가능
])
puts res
