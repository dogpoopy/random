.class Lcom/netease/unisdk/gmbridge5/view/FloatWindow$4;
.super Ljava/lang/Object;
.source "FloatWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/unisdk/gmbridge5/view/FloatWindow;->showExpandLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/unisdk/gmbridge5/view/FloatWindow;

.field final synthetic val$menuItems:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/netease/unisdk/gmbridge5/view/FloatWindow;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/netease/unisdk/gmbridge5/view/FloatWindow;

    .line 256
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge5/view/FloatWindow$4;->this$0:Lcom/netease/unisdk/gmbridge5/view/FloatWindow;

    iput-object p2, p0, Lcom/netease/unisdk/gmbridge5/view/FloatWindow$4;->val$menuItems:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 259
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/view/FloatWindow$4;->this$0:Lcom/netease/unisdk/gmbridge5/view/FloatWindow;

    iget-object v1, p0, Lcom/netease/unisdk/gmbridge5/view/FloatWindow$4;->val$menuItems:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/netease/unisdk/gmbridge5/view/FloatWindow;->access$1200(Lcom/netease/unisdk/gmbridge5/view/FloatWindow;Ljava/util/List;)V

    .line 260
    return-void
.end method
