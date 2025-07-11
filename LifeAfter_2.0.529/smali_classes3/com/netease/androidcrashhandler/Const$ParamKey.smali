.class public Lcom/netease/androidcrashhandler/Const$ParamKey;
.super Ljava/lang/Object;
.source "Const.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/androidcrashhandler/Const;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ParamKey"
.end annotation


# static fields
.field public static final APPKEY:Ljava/lang/String; = "appkey"

.field public static final CALLBACK_METHOD_NAME:Ljava/lang/String; = "callback_method_name"

.field public static final CALLBACK_SO_PATH:Ljava/lang/String; = "callback_so_path"

.field public static final CLIENT_V:Ljava/lang/String; = "client_v"

.field public static final CRASH_THROWABLE:Ljava/lang/String; = "crash_throwable"

.field public static final CRASH_TIME:Ljava/lang/String; = "crash_time"

.field public static final DUMP_MODULE:Ljava/lang/String; = "dump_module"

.field public static final ENGINE_VERSION:Ljava/lang/String; = "engine_version"

.field public static final ERROR_TYPE:Ljava/lang/String; = "error_type"

.field public static final EXT_PLUGIN_INFO:Ljava/lang/String; = "ext_plugin_info"

.field public static final HARDENED_BY:Ljava/lang/String; = "hardened_by"

.field public static final HARDENING_VERSION:Ljava/lang/String; = "harden_version"

.field public static final INFO:Ljava/lang/String; = "info"

.field public static final IS_HARDENED:Ljava/lang/String; = "is_hardened"

.field public static final PROCOTOL_STATE:Ljava/lang/String; = "procotol_state"

.field public static final PROJECT:Ljava/lang/String; = "project"

.field public static final PROTOCOL_ACCEPT:Ljava/lang/String; = "1"

.field public static final PROTOCOL_REFUSE:Ljava/lang/String; = "2"

.field public static final RES_VERSION:Ljava/lang/String; = "res_version"

.field public static final SERVER_NAME:Ljava/lang/String; = "server_name"

.field public static final SIGNAL_BLOCK:Ljava/lang/String; = "signal_block"

.field public static final TARGET_THREAD:Ljava/lang/String; = "target_thread"

.field public static final TRANSID:Ljava/lang/String; = "transid"

.field public static final UID:Ljava/lang/String; = "uid"

.field public static final USERNAME:Ljava/lang/String; = "username"

.field public static final ZIP_UPLOAD_URL:Ljava/lang/String; = "zip_upload_url"


# instance fields
.field final synthetic this$0:Lcom/netease/androidcrashhandler/Const;


# direct methods
.method public constructor <init>(Lcom/netease/androidcrashhandler/Const;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/netease/androidcrashhandler/Const$ParamKey;->this$0:Lcom/netease/androidcrashhandler/Const;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
