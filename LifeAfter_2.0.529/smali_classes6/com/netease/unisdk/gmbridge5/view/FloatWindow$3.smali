.class Lcom/netease/unisdk/gmbridge5/view/FloatWindow$3;
.super Ljava/lang/Object;
.source "FloatWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/unisdk/gmbridge5/view/FloatWindow;->iconClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/unisdk/gmbridge5/view/FloatWindow;


# direct methods
.method constructor <init>(Lcom/netease/unisdk/gmbridge5/view/FloatWindow;)V
    .locals 0
    .param p1, "this$0"    # Lcom/netease/unisdk/gmbridge5/view/FloatWindow;

    .line 141
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge5/view/FloatWindow$3;->this$0:Lcom/netease/unisdk/gmbridge5/view/FloatWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 144
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/view/FloatWindow$3;->this$0:Lcom/netease/unisdk/gmbridge5/view/FloatWindow;

    invoke-static {v0}, Lcom/netease/unisdk/gmbridge5/view/FloatWindow;->access$900(Lcom/netease/unisdk/gmbridge5/view/FloatWindow;)Lcom/netease/unisdk/gmbridge5/data/DataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/unisdk/gmbridge5/data/DataManager;->getMenus()Ljava/util/List;

    move-result-object v0

    .line 145
    .local v0, "menuItems":Ljava/util/List;, "Ljava/util/List<Lcom/netease/unisdk/gmbridge5/floatmenu/MenuItem;>;"
    if-nez v0, :cond_0

    .line 146
    iget-object v1, p0, Lcom/netease/unisdk/gmbridge5/view/FloatWindow$3;->this$0:Lcom/netease/unisdk/gmbridge5/view/FloatWindow;

    invoke-static {v1}, Lcom/netease/unisdk/gmbridge5/view/FloatWindow;->access$1000(Lcom/netease/unisdk/gmbridge5/view/FloatWindow;)Lcom/netease/unisdk/gmbridge5/GmBridge;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/unisdk/gmbridge5/GmBridge;->requestMenus()V

    goto :goto_0

    .line 148
    :cond_0
    iget-object v1, p0, Lcom/netease/unisdk/gmbridge5/view/FloatWindow$3;->this$0:Lcom/netease/unisdk/gmbridge5/view/FloatWindow;

    invoke-static {v1}, Lcom/netease/unisdk/gmbridge5/view/FloatWindow;->access$1100(Lcom/netease/unisdk/gmbridge5/view/FloatWindow;)Lcom/netease/unisdk/gmbridge5/floatmenu/MenuItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    new-instance v1, Lcom/netease/unisdk/gmbridge5/view/FloatWindow$3$1;

    invoke-direct {v1, p0, v0}, Lcom/netease/unisdk/gmbridge5/view/FloatWindow$3$1;-><init>(Lcom/netease/unisdk/gmbridge5/view/FloatWindow$3;Ljava/util/List;)V

    invoke-static {v1}, Lcom/netease/unisdk/gmbridge5/task/TaskExecutor;->runTaskOnUiThread(Ljava/lang/Runnable;)V

    .line 156
    :goto_0
    return-void
.end method
