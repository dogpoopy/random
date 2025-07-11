.class Lcom/netease/neox/PluginApp$1;
.super Ljava/lang/Object;
.source "PluginApp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/neox/PluginApp;->requestOrientation(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/neox/PluginApp;

.field final synthetic val$orient:I


# direct methods
.method constructor <init>(Lcom/netease/neox/PluginApp;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 112
    iput-object p1, p0, Lcom/netease/neox/PluginApp$1;->this$0:Lcom/netease/neox/PluginApp;

    iput p2, p0, Lcom/netease/neox/PluginApp$1;->val$orient:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 115
    iget v0, p0, Lcom/netease/neox/PluginApp$1;->val$orient:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 116
    iget-object v0, p0, Lcom/netease/neox/PluginApp$1;->this$0:Lcom/netease/neox/PluginApp;

    invoke-static {v0}, Lcom/netease/neox/PluginApp;->access$000(Lcom/netease/neox/PluginApp;)Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/netease/neox/PluginApp$1;->this$0:Lcom/netease/neox/PluginApp;

    invoke-static {v0}, Lcom/netease/neox/PluginApp;->access$000(Lcom/netease/neox/PluginApp;)Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :goto_0
    return-void
.end method
