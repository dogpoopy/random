.class public Lcom/netease/mpay/oversea/b1;
.super Ljava/lang/Object;
.source "ContentsManager.java"


# instance fields
.field private a:Landroidx/fragment/app/Fragment;

.field private b:Landroidx/fragment/app/Fragment;

.field private c:Landroid/app/Activity;

.field private final d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/netease/mpay/oversea/w2;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/netease/mpay/oversea/w2;

.field private g:Lcom/netease/mpay/oversea/w2;

.field private h:I

.field private i:I

.field private j:I

.field private k:Lcom/netease/mpay/oversea/ui/o;

.field private final l:Lcom/netease/mpay/oversea/o3;

.field private m:Landroid/view/View;

.field private n:Landroid/view/View;

.field private o:I


# direct methods
.method private constructor <init>(Landroid/app/Activity;IIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/netease/mpay/oversea/b1;->c:Landroid/app/Activity;

    .line 3
    iput p2, p0, Lcom/netease/mpay/oversea/b1;->o:I

    .line 4
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/netease/mpay/oversea/b1;->d:Ljava/util/HashMap;

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/netease/mpay/oversea/b1;->e:Ljava/util/ArrayList;

    .line 6
    iput p3, p0, Lcom/netease/mpay/oversea/b1;->h:I

    .line 7
    iput p4, p0, Lcom/netease/mpay/oversea/b1;->i:I

    .line 8
    iput p5, p0, Lcom/netease/mpay/oversea/b1;->j:I

    .line 9
    new-instance p1, Lcom/netease/mpay/oversea/o3;

    invoke-direct {p1}, Lcom/netease/mpay/oversea/o3;-><init>()V

    iput-object p1, p0, Lcom/netease/mpay/oversea/b1;->l:Lcom/netease/mpay/oversea/o3;

    return-void
.end method

.method public static a(Landroid/app/Activity;)Lcom/netease/mpay/oversea/b1;
    .locals 7

    .line 8
    new-instance v6, Lcom/netease/mpay/oversea/b1;

    sget v3, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__uc_content:I

    sget v5, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__full_content:I

    const/4 v2, 0x3

    const/4 v4, -0x1

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/oversea/b1;-><init>(Landroid/app/Activity;IIII)V

    return-object v6
.end method

.method private declared-synchronized a(Lcom/netease/mpay/oversea/w2;Lcom/netease/mpay/oversea/m7;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/mpay/oversea/w2;",
            "Lcom/netease/mpay/oversea/m7<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_b

    .line 9
    :try_start_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/b1;->f:Lcom/netease/mpay/oversea/w2;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/netease/mpay/oversea/w2;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/netease/mpay/oversea/w2;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/b1;->c:Landroid/app/Activity;

    if-nez v0, :cond_1

    goto/16 :goto_3

    .line 11
    :cond_1
    invoke-static {v0}, Lcom/netease/mpay/oversea/ec;->b(Landroid/app/Activity;)V

    .line 12
    iget-object v0, p0, Lcom/netease/mpay/oversea/b1;->c:Landroid/app/Activity;

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    if-nez p2, :cond_2

    .line 14
    new-instance p2, Lcom/netease/mpay/oversea/m7;

    iget-object v1, p1, Lcom/netease/mpay/oversea/w2;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/netease/mpay/oversea/w2;->b:Ljava/lang/String;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p2, v1, v2, v3}, Lcom/netease/mpay/oversea/m7;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 15
    iget-object v1, p0, Lcom/netease/mpay/oversea/b1;->l:Lcom/netease/mpay/oversea/o3;

    iget-object v2, p1, Lcom/netease/mpay/oversea/w2;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, p2}, Lcom/netease/mpay/oversea/o3;->a(Ljava/lang/String;Lcom/netease/mpay/oversea/m7;)Lcom/netease/mpay/oversea/m7;

    .line 17
    :cond_2
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 18
    new-instance v1, Lcom/netease/mpay/oversea/a1$a;

    invoke-direct {v1}, Lcom/netease/mpay/oversea/a1$a;-><init>()V

    .line 19
    invoke-virtual {v1, p0}, Lcom/netease/mpay/oversea/a1$a;->a(Lcom/netease/mpay/oversea/b1;)Lcom/netease/mpay/oversea/a1$a;

    move-result-object v1

    .line 20
    invoke-virtual {v1, p2}, Lcom/netease/mpay/oversea/a1$a;->a(Lcom/netease/mpay/oversea/m7;)Lcom/netease/mpay/oversea/a1$a;

    move-result-object p2

    .line 21
    invoke-virtual {p2, p1}, Lcom/netease/mpay/oversea/a1$a;->a(Lcom/netease/mpay/oversea/w2;)Lcom/netease/mpay/oversea/a1$a;

    move-result-object p2

    iget-object v1, p0, Lcom/netease/mpay/oversea/b1;->c:Landroid/app/Activity;

    check-cast v1, Landroidx/fragment/app/FragmentActivity;

    .line 22
    invoke-virtual {p2, v1}, Lcom/netease/mpay/oversea/a1$a;->a(Landroidx/fragment/app/FragmentActivity;)Lcom/netease/mpay/oversea/a1;

    move-result-object p2

    .line 23
    iget-object v1, p0, Lcom/netease/mpay/oversea/b1;->a:Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_3

    if-eq v1, p2, :cond_3

    .line 24
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 25
    iget-object v1, p0, Lcom/netease/mpay/oversea/b1;->a:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 27
    :cond_3
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 28
    invoke-virtual {v0, p2}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 29
    invoke-virtual {p2}, Lcom/netease/mpay/oversea/a1;->b()V

    goto :goto_2

    .line 31
    :cond_4
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/w2;->i()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_8

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/w2;->g()Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_0

    .line 40
    :cond_5
    iget-object v1, p0, Lcom/netease/mpay/oversea/b1;->n:Landroid/view/View;

    if-eqz v1, :cond_6

    const/16 v3, 0x8

    .line 41
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 43
    :cond_6
    iget-object v1, p0, Lcom/netease/mpay/oversea/b1;->m:Landroid/view/View;

    if-eqz v1, :cond_7

    .line 44
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 46
    :cond_7
    iget v1, p0, Lcom/netease/mpay/oversea/b1;->h:I

    invoke-virtual {v0, v1, p2}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_1

    .line 47
    :cond_8
    :goto_0
    iget-object v1, p0, Lcom/netease/mpay/oversea/b1;->n:Landroid/view/View;

    if-eqz v1, :cond_9

    .line 48
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 50
    :cond_9
    iget-object v1, p0, Lcom/netease/mpay/oversea/b1;->m:Landroid/view/View;

    if-eqz v1, :cond_a

    const/4 v2, 0x4

    .line 51
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 53
    :cond_a
    iget v1, p0, Lcom/netease/mpay/oversea/b1;->j:I

    invoke-virtual {v0, v1, p2}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 63
    :goto_1
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 65
    :goto_2
    iget-object v0, p0, Lcom/netease/mpay/oversea/b1;->d:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/netease/mpay/oversea/w2;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iput-object p2, p0, Lcom/netease/mpay/oversea/b1;->a:Landroidx/fragment/app/Fragment;

    .line 67
    iput-object p1, p0, Lcom/netease/mpay/oversea/b1;->f:Lcom/netease/mpay/oversea/w2;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_b
    :goto_3
    monitor-exit p0

    return-void
.end method

.method public static b(Landroid/app/Activity;)Lcom/netease/mpay/oversea/b1;
    .locals 7

    .line 6
    new-instance v6, Lcom/netease/mpay/oversea/b1;

    sget v5, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__full_content:I

    const/4 v2, 0x1

    const/4 v4, -0x1

    move-object v0, v6

    move-object v1, p0

    move v3, v5

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/oversea/b1;-><init>(Landroid/app/Activity;IIII)V

    return-object v6
.end method

.method public static c(Landroid/app/Activity;)Lcom/netease/mpay/oversea/b1;
    .locals 7

    .line 1
    new-instance v6, Lcom/netease/mpay/oversea/b1;

    sget v3, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__uc_content:I

    sget v4, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__uc_navigation:I

    sget v5, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__full_content:I

    const/4 v2, 0x2

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/oversea/b1;-><init>(Landroid/app/Activity;IIII)V

    return-object v6
.end method

.method private declared-synchronized c(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 22
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    .line 23
    :cond_0
    :try_start_1
    new-instance v0, Lcom/netease/mpay/oversea/h1;

    invoke-direct {v0, p1}, Lcom/netease/mpay/oversea/h1;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/netease/mpay/oversea/b1;->c:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/h1;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 24
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    .line 25
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 26
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 27
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    :try_start_2
    iget-object p1, p0, Lcom/netease/mpay/oversea/b1;->c:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catch_0
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/netease/mpay/oversea/b1;->d:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/netease/mpay/oversea/b1;->f:Lcom/netease/mpay/oversea/w2;

    iget-object v1, v1, Lcom/netease/mpay/oversea/w2;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/oversea/w2;

    if-eqz v0, :cond_0

    .line 84
    iget-object v1, p0, Lcom/netease/mpay/oversea/b1;->l:Lcom/netease/mpay/oversea/o3;

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/o3;->c()Lcom/netease/mpay/oversea/m7;

    .line 85
    iget-object v1, p0, Lcom/netease/mpay/oversea/b1;->l:Lcom/netease/mpay/oversea/o3;

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/o3;->b()Lcom/netease/mpay/oversea/m7;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/netease/mpay/oversea/b1;->a(Lcom/netease/mpay/oversea/w2;Lcom/netease/mpay/oversea/m7;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/b1;->m:Landroid/view/View;

    .line 2
    iput-object p2, p0, Lcom/netease/mpay/oversea/b1;->n:Landroid/view/View;

    return-void
.end method

.method public a(Lcom/netease/mpay/oversea/ui/o;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/netease/mpay/oversea/b1;->k:Lcom/netease/mpay/oversea/ui/o;

    return-void
.end method

.method public declared-synchronized a(Lcom/netease/mpay/oversea/w2;)V
    .locals 2

    monitor-enter p0

    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    .line 68
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/b1;->c:Landroid/app/Activity;

    invoke-static {v0}, Lcom/netease/mpay/oversea/ec;->b(Landroid/app/Activity;)V

    .line 69
    iget-object v0, p0, Lcom/netease/mpay/oversea/b1;->c:Landroid/app/Activity;

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 70
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 71
    iget-object v1, p0, Lcom/netease/mpay/oversea/b1;->a:Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_1

    .line 72
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 74
    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/oversea/b1;->d:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/netease/mpay/oversea/w2;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    .line 75
    iput-object p1, p0, Lcom/netease/mpay/oversea/b1;->a:Landroidx/fragment/app/Fragment;

    .line 76
    iput-object p1, p0, Lcom/netease/mpay/oversea/b1;->f:Lcom/netease/mpay/oversea/w2;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Lcom/netease/mpay/oversea/yb;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    .line 86
    :cond_0
    iget-object v0, p1, Lcom/netease/mpay/oversea/yb;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/mpay/oversea/v2;

    .line 87
    iget-object v2, p0, Lcom/netease/mpay/oversea/b1;->d:Ljava/util/HashMap;

    iget-object v3, v1, Lcom/netease/mpay/oversea/v2;->a:Ljava/lang/String;

    new-instance v4, Lcom/netease/mpay/oversea/w2;

    invoke-static {v3}, Lcom/netease/mpay/oversea/v9;->a(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v4, v5, v1, p2}, Lcom/netease/mpay/oversea/w2;-><init>(ILcom/netease/mpay/oversea/v2;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 89
    :cond_1
    iget-object p1, p1, Lcom/netease/mpay/oversea/yb;->a:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/netease/mpay/oversea/b1;->e:Ljava/util/ArrayList;

    return-void
.end method

.method public a(Z)V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/netease/mpay/oversea/b1;->m:Landroid/view/View;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/b1;->n:Landroid/view/View;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/netease/mpay/oversea/b1;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/mpay/oversea/w2;

    if-nez p1, :cond_0

    .line 79
    iget-object p1, p0, Lcom/netease/mpay/oversea/b1;->d:Ljava/util/HashMap;

    const-string v0, "home"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/mpay/oversea/w2;

    .line 81
    :cond_0
    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/b1;->b(Lcom/netease/mpay/oversea/w2;)Z

    move-result p1

    return p1
.end method

.method public b()Lcom/netease/mpay/oversea/w2;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/netease/mpay/oversea/b1;->f:Lcom/netease/mpay/oversea/w2;

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/netease/mpay/oversea/w2;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/netease/mpay/oversea/b1;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/mpay/oversea/w2;

    return-object p1
.end method

.method public b(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/b1;->m:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/b1;->n:Landroid/view/View;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public b(Lcom/netease/mpay/oversea/w2;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/w2;->k()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 10
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/w2;->e()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/b1;->c(Ljava/lang/String;)V

    return v0

    :cond_1
    const/4 v0, 0x0

    .line 13
    invoke-direct {p0, p1, v0}, Lcom/netease/mpay/oversea/b1;->a(Lcom/netease/mpay/oversea/w2;Lcom/netease/mpay/oversea/m7;)V

    const/4 p1, 0x1

    return p1
.end method

.method public c()Landroidx/fragment/app/Fragment;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/netease/mpay/oversea/b1;->a:Landroidx/fragment/app/Fragment;

    return-object v0
.end method

.method public declared-synchronized c(Lcom/netease/mpay/oversea/w2;)V
    .locals 3

    monitor-enter p0

    if-eqz p1, :cond_3

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/b1;->g:Lcom/netease/mpay/oversea/w2;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/netease/mpay/oversea/w2;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/netease/mpay/oversea/w2;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/b1;->c:Landroid/app/Activity;

    if-nez v0, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    invoke-static {v0}, Lcom/netease/mpay/oversea/ec;->b(Landroid/app/Activity;)V

    .line 5
    iget-object v0, p0, Lcom/netease/mpay/oversea/b1;->c:Landroid/app/Activity;

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 7
    new-instance v1, Lcom/netease/mpay/oversea/a1$a;

    invoke-direct {v1}, Lcom/netease/mpay/oversea/a1$a;-><init>()V

    .line 8
    invoke-virtual {v1, p0}, Lcom/netease/mpay/oversea/a1$a;->a(Lcom/netease/mpay/oversea/b1;)Lcom/netease/mpay/oversea/a1$a;

    move-result-object v1

    .line 9
    invoke-virtual {v1, p1}, Lcom/netease/mpay/oversea/a1$a;->a(Lcom/netease/mpay/oversea/w2;)Lcom/netease/mpay/oversea/a1$a;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/oversea/b1;->c:Landroid/app/Activity;

    check-cast v2, Landroidx/fragment/app/FragmentActivity;

    .line 10
    invoke-virtual {v1, v2}, Lcom/netease/mpay/oversea/a1$a;->a(Landroidx/fragment/app/FragmentActivity;)Lcom/netease/mpay/oversea/a1;

    move-result-object v1

    .line 11
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 12
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 13
    invoke-virtual {v1}, Lcom/netease/mpay/oversea/a1;->b()V

    goto :goto_0

    .line 15
    :cond_2
    iget v2, p0, Lcom/netease/mpay/oversea/b1;->i:I

    invoke-virtual {v0, v2, v1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 16
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 18
    :goto_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/b1;->d:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/netease/mpay/oversea/w2;->a:Ljava/lang/String;

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    iput-object v1, p0, Lcom/netease/mpay/oversea/b1;->b:Landroidx/fragment/app/Fragment;

    .line 20
    iput-object p1, p0, Lcom/netease/mpay/oversea/b1;->g:Lcom/netease/mpay/oversea/w2;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_3
    :goto_1
    monitor-exit p0

    return-void
.end method

.method public d()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/netease/mpay/oversea/w2;",
            ">;"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/netease/mpay/oversea/b1;->d:Ljava/util/HashMap;

    return-object v0
.end method

.method public d(Landroid/app/Activity;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/netease/mpay/oversea/b1;->h:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public d(Lcom/netease/mpay/oversea/w2;)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/b1;->c(Lcom/netease/mpay/oversea/w2;)V

    const/4 p1, 0x1

    return p1
.end method

.method public e()Lcom/netease/mpay/oversea/ui/o;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/b1;->k:Lcom/netease/mpay/oversea/ui/o;

    return-object v0
.end method

.method public f()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/b1;->l:Lcom/netease/mpay/oversea/o3;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/o3;->a()Z

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/netease/mpay/oversea/b1;->a:Landroidx/fragment/app/Fragment;

    .line 3
    iput-object v0, p0, Lcom/netease/mpay/oversea/b1;->c:Landroid/app/Activity;

    return-void
.end method
