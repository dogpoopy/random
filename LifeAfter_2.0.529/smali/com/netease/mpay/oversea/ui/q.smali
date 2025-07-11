.class public Lcom/netease/mpay/oversea/ui/q;
.super Lcom/netease/mpay/oversea/ui/a;
.source "PermissionHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/oversea/ui/q$f;
    }
.end annotation


# static fields
.field private static n:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/netease/mpay/oversea/ui/q$f;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private f:Lcom/netease/mpay/oversea/ui/q$f;

.field private g:Ljava/lang/String;

.field private h:Z

.field private i:Z

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/netease/mpay/oversea/ui/q;->n:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/ui/a;-><init>(Landroid/app/Activity;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/netease/mpay/oversea/ui/q;->h:Z

    .line 3
    iput-boolean p1, p0, Lcom/netease/mpay/oversea/ui/q;->i:Z

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/ui/q;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/q;->g:Ljava/lang/String;

    return-object p0
.end method

.method private a(I[I)V
    .locals 6

    const/4 v0, 0x0

    const/16 v1, 0x65

    if-ne p1, v1, :cond_6

    const/4 p1, 0x1

    if-eqz p2, :cond_1

    .line 49
    array-length v1, p2

    if-lez v1, :cond_1

    aget p2, p2, v0

    if-nez p2, :cond_1

    .line 51
    iget-object p2, p0, Lcom/netease/mpay/oversea/ui/q;->f:Lcom/netease/mpay/oversea/ui/q$f;

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Lcom/netease/mpay/oversea/ui/q$f;->a(Z)V

    .line 52
    :cond_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto/16 :goto_2

    .line 54
    :cond_1
    iget-boolean p2, p0, Lcom/netease/mpay/oversea/ui/q;->h:Z

    if-nez p2, :cond_3

    invoke-static {}, Lcom/netease/mpay/oversea/g9;->j()Lcom/netease/mpay/oversea/g9;

    move-result-object p2

    invoke-virtual {p2}, Lcom/netease/mpay/oversea/g9;->a()Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/q;->m:Ljava/lang/String;

    .line 55
    invoke-static {p2, v1}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 59
    iget-boolean p1, p0, Lcom/netease/mpay/oversea/ui/q;->i:Z

    if-eqz p1, :cond_2

    .line 60
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    sget p2, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__permission_rationale:I

    invoke-static {p1, p2}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/q;->k:Ljava/lang/String;

    .line 61
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    sget p2, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__confirm_cancel:I

    invoke-static {p1, p2}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    .line 62
    iget-object p2, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    sget v0, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__confirm_retry:I

    invoke-static {p2, v0}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 64
    :cond_2
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    sget p2, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__permission_album_retry:I

    invoke-static {p1, p2}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/q;->k:Ljava/lang/String;

    .line 65
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    sget p2, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__confirm_cancel:I

    invoke-static {p1, p2}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    .line 66
    iget-object p2, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    sget v0, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__confirm_retry:I

    invoke-static {p2, v0}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p2

    :goto_0
    move-object v4, p1

    move-object v2, p2

    .line 68
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/q;->k:Ljava/lang/String;

    new-instance v3, Lcom/netease/mpay/oversea/ui/q$d;

    invoke-direct {v3, p0}, Lcom/netease/mpay/oversea/ui/q$d;-><init>(Lcom/netease/mpay/oversea/ui/q;)V

    new-instance v5, Lcom/netease/mpay/oversea/ui/q$e;

    invoke-direct {v5, p0}, Lcom/netease/mpay/oversea/ui/q$e;-><init>(Lcom/netease/mpay/oversea/ui/q;)V

    invoke-static/range {v0 .. v5}, Lcom/netease/mpay/oversea/widget/a$u;->a(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/netease/mpay/oversea/widget/a;

    move-result-object p1

    .line 85
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/widget/a;->b()V

    goto :goto_2

    .line 87
    :cond_3
    iget-boolean p2, p0, Lcom/netease/mpay/oversea/ui/q;->i:Z

    if-eqz p2, :cond_4

    .line 88
    iget-object p2, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__permission_refuse:I

    invoke-static {p2, v1}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/netease/mpay/oversea/ui/q;->l:Ljava/lang/String;

    goto :goto_1

    .line 90
    :cond_4
    iget-object p2, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__permission_album_refuse:I

    invoke-static {p2, v1}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/netease/mpay/oversea/ui/q;->l:Ljava/lang/String;

    .line 92
    :goto_1
    iget-object p2, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/q;->l:Ljava/lang/String;

    invoke-static {p2, v1, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 93
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/q;->f:Lcom/netease/mpay/oversea/ui/q$f;

    if-eqz p1, :cond_5

    .line 94
    invoke-interface {p1, v0}, Lcom/netease/mpay/oversea/ui/q$f;->a(Z)V

    .line 95
    :cond_5
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_2

    .line 99
    :cond_6
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/q;->f:Lcom/netease/mpay/oversea/ui/q$f;

    if-eqz p1, :cond_7

    invoke-interface {p1, v0}, Lcom/netease/mpay/oversea/ui/q$f;->a(Z)V

    .line 100
    :cond_7
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :goto_2
    return-void
.end method

.method public static a(Landroid/app/Activity;Lcom/netease/mpay/oversea/ui/q$f;)V
    .locals 2

    const/4 v0, 0x1

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 3
    invoke-static {p0, v0, v1, p1}, Lcom/netease/mpay/oversea/ui/q;->a(Landroid/app/Activity;ZLjava/lang/String;Lcom/netease/mpay/oversea/ui/q$f;)V

    return-void
.end method

.method public static a(Landroid/app/Activity;ZLjava/lang/String;Lcom/netease/mpay/oversea/ui/q$f;)V
    .locals 3

    .line 4
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    if-eqz p3, :cond_0

    .line 6
    sget-object v1, Lcom/netease/mpay/oversea/ui/q;->n:Landroid/util/SparseArray;

    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string v1, "is_option"

    .line 7
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 8
    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    move-result p1

    const-string p3, "callback_id"

    invoke-virtual {v0, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "permission"

    .line 9
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const/16 p1, 0x14

    .line 11
    invoke-static {p0, p1, v0}, Lcom/netease/mpay/oversea/m;->b(Landroid/app/Activity;ILandroid/content/Intent;)V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/ui/q;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/netease/mpay/oversea/ui/q;->h:Z

    return p1
.end method

.method static synthetic b(Lcom/netease/mpay/oversea/ui/q;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/ui/q;->l()V

    return-void
.end method

.method static synthetic c(Lcom/netease/mpay/oversea/ui/q;)Lcom/netease/mpay/oversea/ui/q$f;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/q;->f:Lcom/netease/mpay/oversea/ui/q$f;

    return-object p0
.end method

.method private k()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/q;->m:Ljava/lang/String;

    invoke-static {v0, v1}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkPermission:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", hasRequestPermission:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/netease/mpay/oversea/g9;->h()Lcom/netease/mpay/oversea/h9;

    move-result-object v2

    iget-boolean v2, v2, Lcom/netease/mpay/oversea/h9;->c:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->h()Lcom/netease/mpay/oversea/h9;

    move-result-object v1

    iget-boolean v1, v1, Lcom/netease/mpay/oversea/h9;->c:Z

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 5
    invoke-direct {p0}, Lcom/netease/mpay/oversea/ui/q;->o()V

    goto :goto_1

    .line 8
    :cond_0
    iget-boolean v0, p0, Lcom/netease/mpay/oversea/ui/q;->i:Z

    if-eqz v0, :cond_1

    .line 9
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__permission_rationale:I

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/oversea/ui/q;->j:Ljava/lang/String;

    .line 10
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__confirm_sure:I

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__permission_album:I

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/oversea/ui/q;->j:Ljava/lang/String;

    .line 13
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__confirm_sure:I

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 15
    :goto_0
    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/q;->j:Ljava/lang/String;

    new-instance v3, Lcom/netease/mpay/oversea/ui/q$a;

    invoke-direct {v3, p0}, Lcom/netease/mpay/oversea/ui/q$a;-><init>(Lcom/netease/mpay/oversea/ui/q;)V

    invoke-static {v1, v2, v0, v3}, Lcom/netease/mpay/oversea/widget/a$u;->c(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/netease/mpay/oversea/widget/a;

    move-result-object v0

    .line 28
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/widget/a;->b()V

    :goto_1
    return-void
.end method

.method private l()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/q;->m:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/16 v2, 0x65

    invoke-static {v0, v1, v2}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void
.end method

.method private m()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__permission_album_refuse:I

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/oversea/ui/q;->l:Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__confirm_cancel:I

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    .line 3
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__confirm_sure:I

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    .line 4
    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    iget-object v3, p0, Lcom/netease/mpay/oversea/ui/q;->l:Ljava/lang/String;

    new-instance v5, Lcom/netease/mpay/oversea/ui/q$b;

    invoke-direct {v5, p0}, Lcom/netease/mpay/oversea/ui/q$b;-><init>(Lcom/netease/mpay/oversea/ui/q;)V

    new-instance v7, Lcom/netease/mpay/oversea/ui/q$c;

    invoke-direct {v7, p0}, Lcom/netease/mpay/oversea/ui/q$c;-><init>(Lcom/netease/mpay/oversea/ui/q;)V

    invoke-static/range {v2 .. v7}, Lcom/netease/mpay/oversea/widget/a$u;->b(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/netease/mpay/oversea/widget/a;

    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/widget/a;->b()V

    return-void
.end method

.method private n()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/q;->f:Lcom/netease/mpay/oversea/ui/q$f;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-interface {v0, v1}, Lcom/netease/mpay/oversea/ui/q$f;->a(Z)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private o()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/netease/mpay/oversea/ui/q;->i:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/netease/mpay/oversea/ui/q;->n()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/netease/mpay/oversea/ui/q;->m()V

    :goto_0
    return-void
.end method


# virtual methods
.method public a(IILandroid/content/Intent;)V
    .locals 0

    .line 33
    invoke-super {p0, p1, p2, p3}, Lcom/netease/mpay/oversea/ui/a;->a(IILandroid/content/Intent;)V

    const-string p1, "onActivityResult:enter"

    .line 34
    invoke-static {p1}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    .line 35
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    iget-object p2, p0, Lcom/netease/mpay/oversea/ui/q;->m:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/netease/mpay/oversea/bc;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    .line 36
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/q;->f:Lcom/netease/mpay/oversea/ui/q$f;

    if-eqz p1, :cond_2

    .line 37
    invoke-interface {p1, p2}, Lcom/netease/mpay/oversea/ui/q$f;->a(Z)V

    goto :goto_1

    .line 39
    :cond_0
    iget-boolean p1, p0, Lcom/netease/mpay/oversea/ui/q;->i:Z

    if-eqz p1, :cond_1

    .line 40
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    sget p3, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__permission_refuse:I

    invoke-static {p1, p3}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/q;->l:Ljava/lang/String;

    goto :goto_0

    .line 42
    :cond_1
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    sget p3, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__permission_album_refuse:I

    invoke-static {p1, p3}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/q;->l:Ljava/lang/String;

    .line 44
    :goto_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    iget-object p3, p0, Lcom/netease/mpay/oversea/ui/q;->l:Ljava/lang/String;

    invoke-static {p1, p3, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 45
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/q;->f:Lcom/netease/mpay/oversea/ui/q$f;

    if-eqz p1, :cond_2

    const/4 p2, 0x0

    .line 46
    invoke-interface {p1, p2}, Lcom/netease/mpay/oversea/ui/q$f;->a(Z)V

    .line 48
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public a(I[Ljava/lang/String;[I)V
    .locals 0

    .line 31
    invoke-super {p0, p1, p2, p3}, Lcom/netease/mpay/oversea/ui/a;->a(I[Ljava/lang/String;[I)V

    .line 32
    invoke-direct {p0, p1, p3}, Lcom/netease/mpay/oversea/ui/q;->a(I[I)V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 3

    .line 12
    invoke-super {p0, p1}, Lcom/netease/mpay/oversea/ui/a;->a(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "RETRY_SETTING"

    .line 14
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/netease/mpay/oversea/ui/q;->h:Z

    .line 16
    :cond_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v1, -0x1

    const-string v2, "callback_id"

    .line 17
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v1, :cond_1

    .line 19
    sget-object v1, Lcom/netease/mpay/oversea/ui/q;->n:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/mpay/oversea/ui/q$f;

    iput-object v1, p0, Lcom/netease/mpay/oversea/ui/q;->f:Lcom/netease/mpay/oversea/ui/q$f;

    .line 20
    sget-object v1, Lcom/netease/mpay/oversea/ui/q;->n:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 22
    :cond_1
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->j()Lcom/netease/mpay/oversea/g9;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/g9;->i()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/mpay/oversea/ui/q;->g:Ljava/lang/String;

    const/4 v1, 0x1

    const-string v2, "is_option"

    .line 23
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/netease/mpay/oversea/ui/q;->i:Z

    const-string v1, "permission"

    .line 24
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/q;->m:Ljava/lang/String;

    .line 25
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 26
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/q;->f:Lcom/netease/mpay/oversea/ui/q$f;

    if-eqz p1, :cond_2

    invoke-interface {p1, v0}, Lcom/netease/mpay/oversea/ui/q$f;->a(Z)V

    .line 27
    :cond_2
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void

    .line 30
    :cond_3
    invoke-direct {p0}, Lcom/netease/mpay/oversea/ui/q;->k()V

    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 2

    .line 2
    invoke-super {p0, p1}, Lcom/netease/mpay/oversea/ui/a;->b(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const-string v1, "RETRY_SETTING"

    .line 4
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/netease/mpay/oversea/ui/q;->h:Z

    return-void
.end method

.method public c(Landroid/os/Bundle;)V
    .locals 2

    .line 2
    invoke-super {p0, p1}, Lcom/netease/mpay/oversea/ui/a;->c(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    return-void

    .line 4
    :cond_0
    iget-boolean v0, p0, Lcom/netease/mpay/oversea/ui/q;->h:Z

    const-string v1, "RETRY_SETTING"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public h()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/netease/mpay/oversea/ui/q;->h:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/q;->f:Lcom/netease/mpay/oversea/ui/q$f;

    if-eqz v0, :cond_1

    .line 3
    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/q;->m:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/netease/mpay/oversea/bc;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/netease/mpay/oversea/ui/q$f;->a(Z)V

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
