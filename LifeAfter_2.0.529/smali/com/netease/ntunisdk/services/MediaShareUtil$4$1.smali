.class Lcom/netease/ntunisdk/services/MediaShareUtil$4$1;
.super Ljava/lang/Object;
.source "MediaShareUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/services/MediaShareUtil$4;->success(Lcom/twitter/sdk/android/core/Result;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/netease/ntunisdk/services/MediaShareUtil$4;

.field final synthetic val$model:Lcom/netease/ntunisdk/services/MediaModel;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/services/MediaShareUtil$4;Lcom/netease/ntunisdk/services/MediaModel;)V
    .locals 0

    .line 205
    iput-object p1, p0, Lcom/netease/ntunisdk/services/MediaShareUtil$4$1;->this$1:Lcom/netease/ntunisdk/services/MediaShareUtil$4;

    iput-object p2, p0, Lcom/netease/ntunisdk/services/MediaShareUtil$4$1;->val$model:Lcom/netease/ntunisdk/services/MediaModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 208
    iget-object v0, p0, Lcom/netease/ntunisdk/services/MediaShareUtil$4$1;->this$1:Lcom/netease/ntunisdk/services/MediaShareUtil$4;

    iget-object v0, v0, Lcom/netease/ntunisdk/services/MediaShareUtil$4;->this$0:Lcom/netease/ntunisdk/services/MediaShareUtil;

    iget-object v1, p0, Lcom/netease/ntunisdk/services/MediaShareUtil$4$1;->this$1:Lcom/netease/ntunisdk/services/MediaShareUtil$4;

    iget-object v1, v1, Lcom/netease/ntunisdk/services/MediaShareUtil$4;->val$twitterApiClient:Lcom/netease/ntunisdk/UniTwitterApiClient;

    iget-object v2, p0, Lcom/netease/ntunisdk/services/MediaShareUtil$4$1;->val$model:Lcom/netease/ntunisdk/services/MediaModel;

    invoke-static {v0, v1, v2}, Lcom/netease/ntunisdk/services/MediaShareUtil;->access$400(Lcom/netease/ntunisdk/services/MediaShareUtil;Lcom/netease/ntunisdk/UniTwitterApiClient;Lcom/netease/ntunisdk/services/MediaModel;)V

    return-void
.end method
