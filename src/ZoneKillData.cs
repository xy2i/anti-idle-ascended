using System.Collections.Generic;

namespace aitg.lib
{
    public class ZoneKillData
    {
        private readonly Dictionary<string, object> _data = [];

        public object this[string key]
        {
            get => _data.TryGetValue(key, out var value) ? value : _data[key] = 0;
            set => _data[key] = value;
        }
    }
}