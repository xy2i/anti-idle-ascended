//! status=pending
_root.my_so.flush();
onEnterFrame = function()
{
   if(Key.isDown(16) && Key.isDown(67))
   {
      if(_root.saveid == 0)
      {
         temp_so = SharedObject.getLocal("antiIdle_file10","/");
      }
      if(_root.saveid == 1)
      {
         temp_so = SharedObject.getLocal("antiIdle_file11","/");
      }
      if(_root.saveid == 2)
      {
         temp_so = SharedObject.getLocal("antiIdle_file12","/");
      }
      if(_root.saveid == 3)
      {
         temp_so = SharedObject.getLocal("antiIdle_file13","/");
      }
      if(_root.saveid == 10)
      {
         temp_so = SharedObject.getLocal("antiIdle_file0","/");
      }
      if(_root.saveid == 11)
      {
         temp_so = SharedObject.getLocal("antiIdle_file1","/");
      }
      if(_root.saveid == 12)
      {
         temp_so = SharedObject.getLocal("antiIdle_file2","/");
      }
      if(_root.saveid == 13)
      {
         temp_so = SharedObject.getLocal("antiIdle_file3","/");
      }
      if(temp_so.data.lockedFile != false)
      {
         _root.save.lockedFile = false;
         _root.gotoAndStop(13);
      }
   }
};
