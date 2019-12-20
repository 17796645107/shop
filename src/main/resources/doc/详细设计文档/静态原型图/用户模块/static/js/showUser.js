<script type="text/javascript">

// 注意： ie7只支持年/月/日 格式的日期--有些日期插件选中后的值是年-月-日因此需要转一层
var date = '2017-10-25'
// 转成ie7都能支持的时间格式
var ieDate = date.replace(/-/g,"/")
// 标准时间
var cgDate = new Date(ieDate)

// 时间戳转换---方式
var timeStamp = cgDate.getTime()


var timeStampSecond  = Date.parse(cgDate )

    </script>