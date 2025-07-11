.class Lcom/netease/ntunisdk/DownloadImageFileAsyncTask$1;
.super Ljava/lang/Object;
.source "DownloadImageFileAsyncTask.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/DownloadImageFileAsyncTask;->onPreExecute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/DownloadImageFileAsyncTask;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/DownloadImageFileAsyncTask;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/netease/ntunisdk/DownloadImageFileAsyncTask$1;->this$0:Lcom/netease/ntunisdk/DownloadImageFileAsyncTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    .line 60
    iget-object p1, p0, Lcom/netease/ntunisdk/DownloadImageFileAsyncTask$1;->this$0:Lcom/netease/ntunisdk/DownloadImageFileAsyncTask;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/netease/ntunisdk/DownloadImageFileAsyncTask;->access$002(Lcom/netease/ntunisdk/DownloadImageFileAsyncTask;Z)Z

    .line 61
    iget-object p1, p0, Lcom/netease/ntunisdk/DownloadImageFileAsyncTask$1;->this$0:Lcom/netease/ntunisdk/DownloadImageFileAsyncTask;

    invoke-virtual {p1, v0}, Lcom/netease/ntunisdk/DownloadImageFileAsyncTask;->cancel(Z)Z

    .line 62
    iget-object p1, p0, Lcom/netease/ntunisdk/DownloadImageFileAsyncTask$1;->this$0:Lcom/netease/ntunisdk/DownloadImageFileAsyncTask;

    invoke-static {p1}, Lcom/netease/ntunisdk/DownloadImageFileAsyncTask;->access$100(Lcom/netease/ntunisdk/DownloadImageFileAsyncTask;)Lcom/netease/ntunisdk/FbMediaProcessCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 63
    iget-object p1, p0, Lcom/netease/ntunisdk/DownloadImageFileAsyncTask$1;->this$0:Lcom/netease/ntunisdk/DownloadImageFileAsyncTask;

    invoke-static {p1}, Lcom/netease/ntunisdk/DownloadImageFileAsyncTask;->access$100(Lcom/netease/ntunisdk/DownloadImageFileAsyncTask;)Lcom/netease/ntunisdk/FbMediaProcessCallback;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Lcom/netease/ntunisdk/FbMediaProcessCallback;->done(ZLjava/lang/String;)V

    :cond_0
    return-void
.end method
