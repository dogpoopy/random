.class Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment$2;
.super Ljava/lang/Object;
.source "ShowMediaFragment.java"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 299
    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment$2;->this$0:Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Boolean;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "aBoolean"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 303
    :cond_0
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment$2;->this$0:Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;

    invoke-static {p1}, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->access$300(Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;)Landroid/widget/Button;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment$2;->this$0:Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "picedit_finish"

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/piclib/utils/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "aBoolean"
        }
    .end annotation

    .line 299
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment$2;->onChanged(Ljava/lang/Boolean;)V

    return-void
.end method
