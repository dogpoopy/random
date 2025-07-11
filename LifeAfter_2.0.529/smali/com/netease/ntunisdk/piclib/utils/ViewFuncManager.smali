.class public Lcom/netease/ntunisdk/piclib/utils/ViewFuncManager;
.super Ljava/lang/Object;
.source "ViewFuncManager.java"


# instance fields
.field private final container:Landroid/view/ViewGroup;

.field private currentTag:Ljava/lang/String;

.field private showingView:Landroid/view/View;

.field private final viewMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "container"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/utils/ViewFuncManager;->viewMap:Ljava/util/HashMap;

    const-string v0, ""

    .line 16
    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/utils/ViewFuncManager;->currentTag:Ljava/lang/String;

    .line 19
    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/utils/ViewFuncManager;->container:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method public addView(Ljava/lang/String;Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tag",
            "view"
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/utils/ViewFuncManager;->viewMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public dismiss()V
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/utils/ViewFuncManager;->showingView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 38
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/utils/ViewFuncManager;->container:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/utils/ViewFuncManager;->showingView:Landroid/view/View;

    :cond_0
    const-string v0, ""

    .line 41
    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/utils/ViewFuncManager;->currentTag:Ljava/lang/String;

    return-void
.end method

.method public getCurrentTag()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/utils/ViewFuncManager;->currentTag:Ljava/lang/String;

    return-object v0
.end method

.method public isShowing()Z
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/utils/ViewFuncManager;->showingView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public show(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tag"
        }
    .end annotation

    .line 27
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/utils/ViewFuncManager;->dismiss()V

    .line 28
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/utils/ViewFuncManager;->viewMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 30
    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/utils/ViewFuncManager;->currentTag:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/utils/ViewFuncManager;->showingView:Landroid/view/View;

    .line 32
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/utils/ViewFuncManager;->container:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method
