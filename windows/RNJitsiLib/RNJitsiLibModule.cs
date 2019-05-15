using ReactNative.Bridge;
using System;
using System.Collections.Generic;
using Windows.ApplicationModel.Core;
using Windows.UI.Core;

namespace Jitsi.Lib.RNJitsiLib
{
    /// <summary>
    /// A module that allows JS to share data.
    /// </summary>
    class RNJitsiLibModule : NativeModuleBase
    {
        /// <summary>
        /// Instantiates the <see cref="RNJitsiLibModule"/>.
        /// </summary>
        internal RNJitsiLibModule()
        {

        }

        /// <summary>
        /// The name of the native module.
        /// </summary>
        public override string Name
        {
            get
            {
                return "RNJitsiLib";
            }
        }
    }
}
