.class Lcom/netease/unisdk/gmbridge5/view/FloatWindow$1;
.super Ljava/lang/Object;
.source "FloatWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/unisdk/gmbridge5/view/FloatWindow;
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

    .line 53
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge5/view/FloatWindow$1;->this$0:Lcom/netease/unisdk/gmbridge5/view/FloatWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/view/FloatWindow$1;->this$0:Lcom/netease/unisdk/gmbridge5/view/FloatWindow;

    invoke-virtual {v0}, Lcom/netease/unisdk/gmbridge5/view/FloatWindow;->hideExpandLayout()V

    .line 57
    return-void
.end method
