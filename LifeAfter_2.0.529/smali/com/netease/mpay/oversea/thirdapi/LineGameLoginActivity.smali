.class public Lcom/netease/mpay/oversea/thirdapi/LineGameLoginActivity;
.super Lcom/linecorp/trident/android/binding/TridentActivity;
.source "LineGameLoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/oversea/thirdapi/LineGameLoginActivity$f;,
        Lcom/netease/mpay/oversea/thirdapi/LineGameLoginActivity$g;,
        Lcom/netease/mpay/oversea/thirdapi/LineGameLoginActivity$h;
    }
.end annotation


# static fields
.field public static final LOGIN_FAILED:I = 0x65

.field public static final RESULT_ERROR_CODE:Ljava/lang/String; = "error_code"

.field public static final RESULT_ERROR_MSG:Ljava/lang/String; = "error_msg"

.field public static final RESULT_TOKEN:Ljava/lang/String; = "token"

.field public static final RESULT_UID:Ljava/lang/String; = "uid"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/linecorp/trident/android/binding/TridentActivity;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/thirdapi/LineGameLoginActivity;->a:Z

    return-void
.end method

.method private a()V
    .locals 3

    .line 8
    invoke-static {}, Lcom/linecorp/trident/android/binding/AuthManager;->getInstance()Lcom/linecorp/trident/android/binding/AuthManager;

    move-result-object v0

    sget-object v1, Lcom/linecorp/trident/android/binding/AuthProvider;->AuthProviderLINE:Lcom/linecorp/trident/android/binding/AuthProvider;

    new-instance v2, Lcom/netease/mpay/oversea/thirdapi/LineGameLoginActivity$d;

    invoke-direct {v2, p0}, Lcom/netease/mpay/oversea/thirdapi/LineGameLoginActivity$d;-><init>(Lcom/netease/mpay/oversea/thirdapi/LineGameLoginActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/linecorp/trident/android/binding/AuthManager;->signIn(Lcom/linecorp/trident/android/binding/AuthProvider;Lcom/linecorp/trident/android/binding/CallBackListener2;)V

    return-void
.end method

.method private a(ILjava/lang/String;)V
    .locals 2

    .line 15
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "error_code"

    .line 16
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "error_msg"

    .line 17
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    .line 18
    invoke-virtual {p0, v1, v0}, Lcom/linecorp/trident/android/binding/TridentActivity;->setResult(ILandroid/content/Intent;)V

    .line 19
    sget-object v0, Lcom/netease/mpay/oversea/thirdapi/n;->d:Lcom/netease/mpay/oversea/thirdapi/n$k;

    invoke-virtual {v0, p1, p2}, Lcom/netease/mpay/oversea/thirdapi/n$k;->a(ILjava/lang/String;)V

    .line 20
    invoke-virtual {p0}, Lcom/linecorp/trident/android/binding/TridentActivity;->finish()V

    return-void
.end method

.method private static a(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 2

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    const-string v1, "activity_orientation"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v0, 0x8000000

    .line 5
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 6
    const-class v0, Lcom/netease/mpay/oversea/thirdapi/LineGameLoginActivity;

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/thirdapi/LineGameLoginActivity;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/netease/mpay/oversea/thirdapi/LineGameLoginActivity;->a(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/thirdapi/LineGameLoginActivity;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/netease/mpay/oversea/thirdapi/LineGameLoginActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 9
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "uid"

    .line 10
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "token"

    .line 11
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, -0x1

    .line 12
    invoke-virtual {p0, v1, v0}, Lcom/linecorp/trident/android/binding/TridentActivity;->setResult(ILandroid/content/Intent;)V

    .line 13
    sget-object v0, Lcom/netease/mpay/oversea/thirdapi/n;->d:Lcom/netease/mpay/oversea/thirdapi/n$k;

    invoke-virtual {v0, p1, p2, p3}, Lcom/netease/mpay/oversea/thirdapi/n$k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 14
    invoke-virtual {p0}, Lcom/linecorp/trident/android/binding/TridentActivity;->finish()V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/thirdapi/LineGameLoginActivity;)Z
    .locals 0

    .line 3
    iget-boolean p0, p0, Lcom/netease/mpay/oversea/thirdapi/LineGameLoginActivity;->a:Z

    return p0
.end method

.method private b()V
    .locals 2

    .line 2
    new-instance v0, Lcom/netease/mpay/oversea/thirdapi/LineGameLoginActivity$f;

    invoke-direct {v0}, Lcom/netease/mpay/oversea/thirdapi/LineGameLoginActivity$f;-><init>()V

    new-instance v1, Lcom/netease/mpay/oversea/thirdapi/LineGameLoginActivity$c;

    invoke-direct {v1, p0}, Lcom/netease/mpay/oversea/thirdapi/LineGameLoginActivity$c;-><init>(Lcom/netease/mpay/oversea/thirdapi/LineGameLoginActivity;)V

    invoke-virtual {v0, p0, v1}, Lcom/netease/mpay/oversea/thirdapi/LineGameLoginActivity$f;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/thirdapi/LineGameLoginActivity$g;)V

    return-void
.end method

.method static synthetic b(Lcom/netease/mpay/oversea/thirdapi/LineGameLoginActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/thirdapi/LineGameLoginActivity;->a()V

    return-void
.end method

.method private c()V
    .locals 2

    .line 1
    new-instance v0, Lcom/netease/mpay/oversea/thirdapi/LineGameLoginActivity$f;

    invoke-direct {v0}, Lcom/netease/mpay/oversea/thirdapi/LineGameLoginActivity$f;-><init>()V

    new-instance v1, Lcom/netease/mpay/oversea/thirdapi/LineGameLoginActivity$b;

    invoke-direct {v1, p0}, Lcom/netease/mpay/oversea/thirdapi/LineGameLoginActivity$b;-><init>(Lcom/netease/mpay/oversea/thirdapi/LineGameLoginActivity;)V

    invoke-virtual {v0, p0, v1}, Lcom/netease/mpay/oversea/thirdapi/LineGameLoginActivity$f;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/thirdapi/LineGameLoginActivity$g;)V

    return-void
.end method

.method public static checkCredential(Landroid/app/Activity;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "type"

    const/4 v2, 0x3

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3
    invoke-static {p0, v0}, Lcom/netease/mpay/oversea/thirdapi/LineGameLoginActivity;->a(Landroid/app/Activity;Landroid/content/Intent;)V

    return-void
.end method

.method private d()V
    .locals 2

    .line 1
    new-instance v0, Lcom/netease/mpay/oversea/thirdapi/LineGameLoginActivity$f;

    invoke-direct {v0}, Lcom/netease/mpay/oversea/thirdapi/LineGameLoginActivity$f;-><init>()V

    new-instance v1, Lcom/netease/mpay/oversea/thirdapi/LineGameLoginActivity$a;

    invoke-direct {v1, p0}, Lcom/netease/mpay/oversea/thirdapi/LineGameLoginActivity$a;-><init>(Lcom/netease/mpay/oversea/thirdapi/LineGameLoginActivity;)V

    invoke-virtual {v0, p0, v1}, Lcom/netease/mpay/oversea/thirdapi/LineGameLoginActivity$f;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/thirdapi/LineGameLoginActivity$g;)V

    return-void
.end method

.method public static login(Landroid/app/Activity;Z)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "loginUseLocalCredentials"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "type"

    const/4 v1, 0x2

    .line 3
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4
    invoke-static {p0, v0}, Lcom/netease/mpay/oversea/thirdapi/LineGameLoginActivity;->a(Landroid/app/Activity;Landroid/content/Intent;)V

    return-void
.end method

.method public static refresh(Landroid/app/Activity;Z)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "loginUseLocalCredentials"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "type"

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4
    invoke-static {p0, v0}, Lcom/netease/mpay/oversea/thirdapi/LineGameLoginActivity;->a(Landroid/app/Activity;Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/linecorp/trident/android/binding/TridentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->h()Lcom/netease/mpay/oversea/h9;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/h9;->b()I

    move-result p1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 4
    :try_start_0
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->h()Lcom/netease/mpay/oversea/h9;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/h9;->b()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/linecorp/trident/android/binding/TridentActivity;->setRequestedOrientation(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    .line 8
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/linecorp/trident/android/binding/TridentActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 10
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 12
    :cond_1
    sget v2, Lcom/netease/mpay/oversea/R$layout;->netease_mpay_oversea__loading_layout:I

    invoke-virtual {p0, v2}, Lcom/linecorp/trident/android/binding/TridentActivity;->setContentView(I)V

    .line 13
    invoke-static {p0}, Lcom/netease/mpay/oversea/bc;->a(Landroid/app/Activity;)V

    .line 15
    :try_start_1
    invoke-static {p1}, Lcom/netease/mpay/oversea/ec;->c(Landroid/view/Window;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    nop

    .line 18
    :goto_1
    invoke-virtual {p0}, Lcom/linecorp/trident/android/binding/TridentActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_2

    .line 20
    invoke-virtual {p0}, Lcom/linecorp/trident/android/binding/TridentActivity;->finish()V

    return-void

    :cond_2
    const-string v2, "loginUseLocalCredentials"

    .line 23
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/netease/mpay/oversea/thirdapi/LineGameLoginActivity;->a:Z

    const/4 v1, 0x1

    const-string v2, "type"

    .line 24
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v1, :cond_5

    const/4 v1, 0x2

    if-eq p1, v1, :cond_4

    if-eq p1, v0, :cond_3

    .line 36
    invoke-virtual {p0}, Lcom/linecorp/trident/android/binding/TridentActivity;->finish()V

    goto :goto_2

    .line 37
    :cond_3
    invoke-direct {p0}, Lcom/netease/mpay/oversea/thirdapi/LineGameLoginActivity;->d()V

    goto :goto_2

    .line 40
    :cond_4
    invoke-direct {p0}, Lcom/netease/mpay/oversea/thirdapi/LineGameLoginActivity;->b()V

    goto :goto_2

    .line 43
    :cond_5
    invoke-direct {p0}, Lcom/netease/mpay/oversea/thirdapi/LineGameLoginActivity;->c()V

    :goto_2
    return-void
.end method
