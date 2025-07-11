.class Lcom/netease/ntunisdk/SdkTwitter$SaveBmpAsyncTask$1;
.super Ljava/lang/Object;
.source "SdkTwitter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/SdkTwitter$SaveBmpAsyncTask;->onPreExecute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/SdkTwitter$SaveBmpAsyncTask;

.field final synthetic val$inst:Lcom/netease/ntunisdk/SdkTwitter;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/SdkTwitter$SaveBmpAsyncTask;Lcom/netease/ntunisdk/SdkTwitter;)V
    .locals 0

    .line 868
    iput-object p1, p0, Lcom/netease/ntunisdk/SdkTwitter$SaveBmpAsyncTask$1;->this$0:Lcom/netease/ntunisdk/SdkTwitter$SaveBmpAsyncTask;

    iput-object p2, p0, Lcom/netease/ntunisdk/SdkTwitter$SaveBmpAsyncTask$1;->val$inst:Lcom/netease/ntunisdk/SdkTwitter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 871
    iget-object p1, p0, Lcom/netease/ntunisdk/SdkTwitter$SaveBmpAsyncTask$1;->this$0:Lcom/netease/ntunisdk/SdkTwitter$SaveBmpAsyncTask;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/netease/ntunisdk/SdkTwitter$SaveBmpAsyncTask;->access$1702(Lcom/netease/ntunisdk/SdkTwitter$SaveBmpAsyncTask;Z)Z

    .line 872
    iget-object p1, p0, Lcom/netease/ntunisdk/SdkTwitter$SaveBmpAsyncTask$1;->this$0:Lcom/netease/ntunisdk/SdkTwitter$SaveBmpAsyncTask;

    invoke-virtual {p1, v0}, Lcom/netease/ntunisdk/SdkTwitter$SaveBmpAsyncTask;->cancel(Z)Z

    .line 873
    iget-object p1, p0, Lcom/netease/ntunisdk/SdkTwitter$SaveBmpAsyncTask$1;->val$inst:Lcom/netease/ntunisdk/SdkTwitter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/netease/ntunisdk/SdkTwitter;->shareFinished(Z)V

    return-void
.end method
