.class public Lcom/netease/androidcrashhandler/Const$URL;
.super Ljava/lang/Object;
.source "Const.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/androidcrashhandler/Const;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "URL"
.end annotation


# static fields
.field public static final DEFAULT_CONFIG_URL:Ljava/lang/String; = "https://appdump.nie.netease.com/config"

.field public static final DEFAULT_CONFIG_URL_KEY:Ljava/lang/String; = "config"

.field public static final DEFAULT_SYSTEM_SO_TOKEN_URL:Ljava/lang/String; = "https://appdump.nie.netease.com/sys_so/prepare"

.field public static final DEFAULT_SYSTEM_SO_UPLOAD_URL:Ljava/lang/String; = "https://appdump.nie.netease.com/sys_so/upload"

.field public static final DEFAULT_UPLOAD_FORMAT_URL:Ljava/lang/String; = "https://%s.appdump.nie.netease.com/"

.field public static final DEFAULT_UPLOAD_URL:Ljava/lang/String; = "https://appdump.nie.netease.com/"

.field public static final DEFAULT_UPLOAD_URL_KEY:Ljava/lang/String; = "upload"

.field public static final UNISECUPLOAD_URL_KEY:Ljava/lang/String; = "revert/upload"


# instance fields
.field final synthetic this$0:Lcom/netease/androidcrashhandler/Const;


# direct methods
.method public constructor <init>(Lcom/netease/androidcrashhandler/Const;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/netease/androidcrashhandler/Const$URL;->this$0:Lcom/netease/androidcrashhandler/Const;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
