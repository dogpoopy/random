.class Lcom/netease/unisdk/gmbridge5/view/FloatWindow$3$1;
.super Ljava/lang/Object;
.source "FloatWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/unisdk/gmbridge5/view/FloatWindow$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/netease/unisdk/gmbridge5/view/FloatWindow$3;

.field final synthetic val$menuItems:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/netease/unisdk/gmbridge5/view/FloatWindow$3;Ljava/util/List;)V
    .locals 0
    .param p1, "this$1"    # Lcom/netease/unisdk/gmbridge5/view/FloatWindow$3;

    .line 149
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge5/view/FloatWindow$3$1;->this$1:Lcom/netease/unisdk/gmbridge5/view/FloatWindow$3;

    iput-object p2, p0, Lcom/netease/unisdk/gmbridge5/view/FloatWindow$3$1;->val$menuItems:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 152
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/view/FloatWindow$3$1;->this$1:Lcom/netease/unisdk/gmbridge5/view/FloatWindow$3;

    iget-object v0, v0, Lcom/netease/unisdk/gmbridge5/view/FloatWindow$3;->this$0:Lcom/netease/unisdk/gmbridge5/view/FloatWindow;

    iget-object v1, p0, Lcom/netease/unisdk/gmbridge5/view/FloatWindow$3$1;->val$menuItems:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/netease/unisdk/gmbridge5/view/FloatWindow;->access$1200(Lcom/netease/unisdk/gmbridge5/view/FloatWindow;Ljava/util/List;)V

    .line 153
    return-void
.end method
