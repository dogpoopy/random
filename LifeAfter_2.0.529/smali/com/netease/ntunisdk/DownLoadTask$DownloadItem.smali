.class public Lcom/netease/ntunisdk/DownLoadTask$DownloadItem;
.super Ljava/lang/Object;
.source "DownLoadTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/DownLoadTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DownloadItem"
.end annotation


# instance fields
.field public defaultSuffix:Ljava/lang/String;

.field public key:Ljava/lang/String;

.field public path:Ljava/lang/String;

.field final synthetic this$0:Lcom/netease/ntunisdk/DownLoadTask;

.field public type:Lcom/netease/ntunisdk/DownLoadTask$Type;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/netease/ntunisdk/DownLoadTask;Ljava/lang/String;Lcom/netease/ntunisdk/DownLoadTask$Type;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/netease/ntunisdk/DownLoadTask$DownloadItem;->this$0:Lcom/netease/ntunisdk/DownLoadTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p2, p0, Lcom/netease/ntunisdk/DownLoadTask$DownloadItem;->url:Ljava/lang/String;

    .line 58
    iput-object p3, p0, Lcom/netease/ntunisdk/DownLoadTask$DownloadItem;->type:Lcom/netease/ntunisdk/DownLoadTask$Type;

    .line 59
    iput-object p4, p0, Lcom/netease/ntunisdk/DownLoadTask$DownloadItem;->key:Ljava/lang/String;

    .line 60
    iput-object p5, p0, Lcom/netease/ntunisdk/DownLoadTask$DownloadItem;->defaultSuffix:Ljava/lang/String;

    return-void
.end method
