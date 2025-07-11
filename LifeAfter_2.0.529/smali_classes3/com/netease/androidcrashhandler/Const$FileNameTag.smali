.class public Lcom/netease/androidcrashhandler/Const$FileNameTag;
.super Ljava/lang/Object;
.source "Const.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/androidcrashhandler/Const;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FileNameTag"
.end annotation


# static fields
.field public static final ACI_FILE:Ljava/lang/String; = ".aci"

.field public static final ANR_FILE:Ljava/lang/String; = ".anr"

.field public static final APP_EXIT_FILE:Ljava/lang/String; = "app_exit.temp"

.field public static final CFG_FILE:Ljava/lang/String; = ".cfg"

.field public static final CHECK_NORMAL_EXIT_FILE:Ljava/lang/String; = "CheckNormalExit.exc"

.field public static final CHECK_NORMAL_EXIT_FILE_TEMP:Ljava/lang/String; = "CheckNormalExit.temp"

.field public static final DETECT_SIGNAL_FILE:Ljava/lang/String; = "detect_signal_file.temp"

.field public static final DETECT_SIGNAL_TAG_FILE:Ljava/lang/String; = "detect_signal_file"

.field public static final DIR_ANR:Ljava/lang/String; = "ANR_TRACE_"

.field public static final DIR_JAVA_CRASH:Ljava/lang/String; = "JAVA_DUMP_"

.field public static final DIR_NATIVE_CRASH:Ljava/lang/String; = "NATIVE_DUMP_"

.field public static final DIR_OTHER:Ljava/lang/String; = "OTHER_"

.field public static final DIR_UNDEFINED_EXCEPTION:Ljava/lang/String; = "UNDEFINED_EXCEPTION_"

.field public static final DI_FILE:Ljava/lang/String; = ".di"

.field public static final DMP_FILE:Ljava/lang/String; = ".dmp"

.field public static final EXC_FILE:Ljava/lang/String; = "undefined_exception.exc"

.field public static final MAIN_FILE:Ljava/lang/String; = "NTMAIN_"

.field public static final MESSAGE_FILE:Ljava/lang/String; = ".message"

.field public static final NATIVE_CRASH_DMP_FILE:Ljava/lang/String; = "native_crash.dmp"

.field public static final NATIVE_CRASH_MARK_FILE:Ljava/lang/String; = "native_crash.mark"

.field public static final NATIVE_LOG_FILE:Ljava/lang/String; = "logcat.log"

.field public static final OTHER_FILE:Ljava/lang/String; = ".other"

.field public static final PARAM_FILE:Ljava/lang/String; = ".param"

.field public static final REQUEST_PARAM_FILE:Ljava/lang/String; = "request_param.unitrace_param"

.field public static final RUNTIME_FILE:Ljava/lang/String; = ".runtime"

.field public static final SCRIPT_FILE:Ljava/lang/String; = ".script"

.field public static final STACK_FILE:Ljava/lang/String; = ".stack"

.field public static final TEMP_FILE:Ljava/lang/String; = ".temp"

.field public static final THIRD_PARTY_PLUGIN:Ljava/lang/String; = "third_party_plugin.temp"

.field public static final TRACE_FILE:Ljava/lang/String; = ".trace"

.field public static final U3D_FILE:Ljava/lang/String; = ".u3d"

.field public static final UNISDK_LOG_FILE:Ljava/lang/String; = "UniTrace.log"

.field public static final UNISDK_LOG_FILE_TEMP:Ljava/lang/String; = "UniTrace.log_temp"

.field public static final UNISEC_RESTORE_SOINFO:Ljava/lang/String; = "unisec_restore_soInfo.json"

.field public static final UUID_FILE:Ljava/lang/String; = "ntunisdk_so_uuids"

.field public static final ZIP_FILE:Ljava/lang/String; = ".zip"

.field public static final ZIP_TEMP_FILE:Ljava/lang/String; = ".ziptemp"


# instance fields
.field final synthetic this$0:Lcom/netease/androidcrashhandler/Const;


# direct methods
.method public constructor <init>(Lcom/netease/androidcrashhandler/Const;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/netease/androidcrashhandler/Const$FileNameTag;->this$0:Lcom/netease/androidcrashhandler/Const;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
