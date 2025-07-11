.class public Lcom/netease/mpay/oversea/a1;
.super Landroidx/fragment/app/Fragment;
.source "ContentViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/oversea/a1$a;
    }
.end annotation


# instance fields
.field protected a:Lcom/netease/mpay/oversea/w2;

.field private b:Lcom/netease/mpay/oversea/b1;

.field private c:Lcom/netease/mpay/oversea/z0;

.field private d:Landroidx/fragment/app/FragmentActivity;

.field private e:Lcom/netease/mpay/oversea/m7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netease/mpay/oversea/m7<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method private a(Landroidx/fragment/app/FragmentActivity;)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/a1;->c:Lcom/netease/mpay/oversea/z0;

    if-nez v0, :cond_0

    .line 3
    iput-object p1, p0, Lcom/netease/mpay/oversea/a1;->d:Landroidx/fragment/app/FragmentActivity;

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/a1;->b:Lcom/netease/mpay/oversea/b1;

    iget-object v1, p0, Lcom/netease/mpay/oversea/a1;->a:Lcom/netease/mpay/oversea/w2;

    .line 6
    invoke-virtual {v1}, Lcom/netease/mpay/oversea/w2;->d()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/oversea/a1;->e:Lcom/netease/mpay/oversea/m7;

    .line 7
    invoke-static {p1, v0, v1, v2}, Lcom/netease/mpay/oversea/z0;->a(Landroidx/fragment/app/FragmentActivity;Lcom/netease/mpay/oversea/b1;Ljava/lang/String;Lcom/netease/mpay/oversea/m7;)Lcom/netease/mpay/oversea/z0;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/mpay/oversea/a1;->a:Lcom/netease/mpay/oversea/w2;

    .line 8
    invoke-virtual {p1, v0}, Lcom/netease/mpay/oversea/z0;->a(Lcom/netease/mpay/oversea/w2;)Lcom/netease/mpay/oversea/z0;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/mpay/oversea/a1;->c:Lcom/netease/mpay/oversea/z0;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, Lcom/netease/mpay/oversea/a1;->c:Lcom/netease/mpay/oversea/z0;

    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/a1;Landroidx/fragment/app/FragmentActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/a1;->a(Landroidx/fragment/app/FragmentActivity;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/netease/mpay/oversea/b1;Lcom/netease/mpay/oversea/w2;Lcom/netease/mpay/oversea/m7;)Lcom/netease/mpay/oversea/a1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/mpay/oversea/b1;",
            "Lcom/netease/mpay/oversea/w2;",
            "Lcom/netease/mpay/oversea/m7<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)",
            "Lcom/netease/mpay/oversea/a1;"
        }
    .end annotation

    .line 24
    iput-object p2, p0, Lcom/netease/mpay/oversea/a1;->a:Lcom/netease/mpay/oversea/w2;

    .line 25
    iput-object p1, p0, Lcom/netease/mpay/oversea/a1;->b:Lcom/netease/mpay/oversea/b1;

    .line 26
    iput-object p3, p0, Lcom/netease/mpay/oversea/a1;->e:Lcom/netease/mpay/oversea/m7;

    return-object p0
.end method

.method public a(IILandroid/content/Intent;)V
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/netease/mpay/oversea/a1;->c:Lcom/netease/mpay/oversea/z0;

    if-eqz v0, :cond_0

    .line 14
    invoke-virtual {v0, p1, p2, p3}, Lcom/netease/mpay/oversea/z0;->a(IILandroid/content/Intent;)V

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/a1;->b:Lcom/netease/mpay/oversea/b1;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/b1;->e()Lcom/netease/mpay/oversea/ui/o;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 17
    iget-object v0, p0, Lcom/netease/mpay/oversea/a1;->b:Lcom/netease/mpay/oversea/b1;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/b1;->e()Lcom/netease/mpay/oversea/ui/o;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/netease/mpay/oversea/ui/o;->a(IILandroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method public a(Landroid/view/KeyEvent;)V
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/netease/mpay/oversea/a1;->c:Lcom/netease/mpay/oversea/z0;

    if-eqz v0, :cond_0

    .line 19
    invoke-virtual {v0, p1}, Lcom/netease/mpay/oversea/z0;->a(Landroid/view/KeyEvent;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/view/MotionEvent;)V
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/netease/mpay/oversea/a1;->c:Lcom/netease/mpay/oversea/z0;

    if-eqz v0, :cond_0

    .line 23
    invoke-virtual {v0, p1}, Lcom/netease/mpay/oversea/z0;->b(Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/netease/mpay/oversea/a1;->c:Lcom/netease/mpay/oversea/z0;

    if-eqz v0, :cond_0

    .line 12
    invoke-virtual {v0, p1}, Lcom/netease/mpay/oversea/z0;->b(Z)V

    :cond_0
    return-void
.end method

.method public a()Z
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/netease/mpay/oversea/a1;->c:Lcom/netease/mpay/oversea/z0;

    if-eqz v0, :cond_0

    .line 21
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/z0;->d()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/a1;->c:Lcom/netease/mpay/oversea/z0;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/z0;->f()V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/a1;->d:Landroidx/fragment/app/FragmentActivity;

    invoke-direct {p0, v0}, Lcom/netease/mpay/oversea/a1;->a(Landroidx/fragment/app/FragmentActivity;)V

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/a1;->c:Lcom/netease/mpay/oversea/z0;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, v0, Lcom/netease/mpay/oversea/z0;->k:Z

    .line 4
    invoke-virtual {v0, p1, p2, p3}, Lcom/netease/mpay/oversea/z0;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/a1;->d:Landroidx/fragment/app/FragmentActivity;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_1

    .line 7
    iget-object p1, p0, Lcom/netease/mpay/oversea/a1;->c:Lcom/netease/mpay/oversea/z0;

    const/4 p2, 0x0

    iput-boolean p2, p1, Lcom/netease/mpay/oversea/z0;->k:Z

    .line 8
    iget-object p1, p0, Lcom/netease/mpay/oversea/a1;->d:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/a1;->c:Lcom/netease/mpay/oversea/z0;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/z0;->e()V

    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/a1;->c:Lcom/netease/mpay/oversea/z0;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/z0;->e()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/netease/mpay/oversea/a1;->c:Lcom/netease/mpay/oversea/z0;

    :cond_0
    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/netease/mpay/oversea/a1;->c:Lcom/netease/mpay/oversea/z0;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Lcom/netease/mpay/oversea/z0;->a(Z)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/a1;->c:Lcom/netease/mpay/oversea/z0;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/z0;->g()V

    .line 4
    iget-object v0, p0, Lcom/netease/mpay/oversea/a1;->c:Lcom/netease/mpay/oversea/z0;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/z0;->c()Ljava/lang/String;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/netease/mpay/oversea/a1;->d:Landroidx/fragment/app/FragmentActivity;

    instance-of v2, v1, Lcom/netease/mpay/oversea/MpayActivity;

    if-eqz v2, :cond_0

    .line 6
    check-cast v1, Lcom/netease/mpay/oversea/MpayActivity;

    invoke-virtual {v1, v0}, Lcom/netease/mpay/oversea/MpayActivity;->setPageName(Ljava/lang/String;)V

    .line 8
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 9
    invoke-static {}, Lcom/netease/mpay/oversea/cb;->c()Lcom/netease/mpay/oversea/cb;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/oversea/a1;->d:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v1, v2, v0}, Lcom/netease/mpay/oversea/cb;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
