.class public Lcom/netease/androidcrashhandler/Const$ErrorTypeValue;
.super Ljava/lang/Object;
.source "Const.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/androidcrashhandler/Const;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ErrorTypeValue"
.end annotation


# static fields
.field public static final ANR_TYPE:Ljava/lang/String; = "ANDROID_ANR"

.field public static final FEATURE_MODULE_INFO:Ljava/lang/String; = "attach_main_module_info"

.field public static final JAVA_TYPE:Ljava/lang/String; = "ANDROID_JAVA_EXCEPTION"

.field public static final JNI_TYPE:Ljava/lang/String; = "ANDROID_NATIVE_ERROR"

.field public static final MEMORY_TYPE:Ljava/lang/String; = "MEMORY_WARN"

.field public static final NO_DUMP_FILE:Ljava/lang/String; = "crash_without_dump_file"

.field public static final OTHER_TYPE:Ljava/lang/String; = "OTHER"

.field public static final SCRIPT_TYPE:Ljava/lang/String; = "SCRIPT_ERROR"

.field public static final SCRIPT_WARN_TYPE:Ljava/lang/String; = "SCRIPT_WARN"

.field public static final U3D_TYPE:Ljava/lang/String; = "U3D_ERROR"

.field public static final UE_FATAL_TYPE:Ljava/lang/String; = "UE_FATAL"


# instance fields
.field final synthetic this$0:Lcom/netease/androidcrashhandler/Const;


# direct methods
.method public constructor <init>(Lcom/netease/androidcrashhandler/Const;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/netease/androidcrashhandler/Const$ErrorTypeValue;->this$0:Lcom/netease/androidcrashhandler/Const;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
