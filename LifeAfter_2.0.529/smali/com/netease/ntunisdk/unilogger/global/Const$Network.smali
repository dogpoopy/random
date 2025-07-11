.class public Lcom/netease/ntunisdk/unilogger/global/Const$Network;
.super Ljava/lang/Object;
.source "Const.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/unilogger/global/Const;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Network"
.end annotation


# static fields
.field public static final CONFIG_URL_MAINLAND:Ljava/lang/String; = "https://impression.update.netease.com/logcatch/v1/"

.field public static final CONFIG_URL_OVERSEA:Ljava/lang/String; = "https://impression.update.easebar.com/logcatch/v1/"

.field public static final CONNECT_TIMEOUT_TIME:J = 0x1388L

.field public static final KEEPALIVE_TIMEOUT:J = 0x1eL

.field public static final METHOD_GET:Ljava/lang/String; = "GET"

.field public static final METHOD_POST:Ljava/lang/String; = "POST"

.field public static final PINGINTERVAL:J = 0x1eL

.field public static final READ_TIMEOUT_TIME:J = 0x1388L

.field public static final REQUEST_CODE_ERROR:I = -0x1

.field public static final REQUEST_CODE_PATH_NOT_EXIST:I = -0x2

.field public static final REQUEST_CODE_SUC:I = 0x1

.field public static final UPLOAD_URL_MAINLAND:Ljava/lang/String; = "https://filecatch.nie.netease.com/api/v1/log?project="

.field public static final UPLOAD_URL_OVERSEA:Ljava/lang/String; = "https://filecatch.nie.easebar.com/api/v1/log?project="

.field public static final WHOAMI_URL_MAINLAND:Ljava/lang/String; = "https://whoami.nie.netease.com/v2"

.field public static final WHOAMI_URL_OVERSEA:Ljava/lang/String; = "https://whoami.nie.easebar.com/v2"

.field public static final WRITE_TIMEOUT_TIME:J = 0x1388L


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/unilogger/global/Const;


# direct methods
.method public constructor <init>(Lcom/netease/ntunisdk/unilogger/global/Const;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/netease/ntunisdk/unilogger/global/Const$Network;->this$0:Lcom/netease/ntunisdk/unilogger/global/Const;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
