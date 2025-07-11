.class Lcom/netease/ntunisdk/SdkTwitter$DownloadImageAsyncTask$1;
.super Ljava/lang/Object;
.source "SdkTwitter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/SdkTwitter$DownloadImageAsyncTask;->onPreExecute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/SdkTwitter$DownloadImageAsyncTask;

.field final synthetic val$inst:Lcom/netease/ntunisdk/SdkTwitter;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/SdkTwitter$DownloadImageAsyncTask;Lcom/netease/ntunisdk/SdkTwitter;)V
    .locals 0

    .line 801
    iput-object p1, p0, Lcom/netease/ntunisdk/SdkTwitter$DownloadImageAsyncTask$1;->this$0:Lcom/netease/ntunisdk/SdkTwitter$DownloadImageAsyncTask;

    iput-object p2, p0, Lcom/netease/ntunisdk/SdkTwitter$DownloadImageAsyncTask$1;->val$inst:Lcom/netease/ntunisdk/SdkTwitter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 804
    iget-object p1, p0, Lcom/netease/ntunisdk/SdkTwitter$DownloadImageAsyncTask$1;->this$0:Lcom/netease/ntunisdk/SdkTwitter$DownloadImageAsyncTask;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/netease/ntunisdk/SdkTwitter$DownloadImageAsyncTask;->access$1402(Lcom/netease/ntunisdk/SdkTwitter$DownloadImageAsyncTask;Z)Z

    .line 805
    iget-object p1, p0, Lcom/netease/ntunisdk/SdkTwitter$DownloadImageAsyncTask$1;->this$0:Lcom/netease/ntunisdk/SdkTwitter$DownloadImageAsyncTask;

    invoke-virtual {p1, v0}, Lcom/netease/ntunisdk/SdkTwitter$DownloadImageAsyncTask;->cancel(Z)Z

    .line 806
    iget-object p1, p0, Lcom/netease/ntunisdk/SdkTwitter$DownloadImageAsyncTask$1;->val$inst:Lcom/netease/ntunisdk/SdkTwitter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/netease/ntunisdk/SdkTwitter;->shareFinished(Z)V

    return-void
.end method
