.class public Lcom/netease/mpay/oversea/ec;
.super Ljava/lang/Object;
.source "ViewUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/oversea/ec$b;,
        Lcom/netease/mpay/oversea/ec$a;
    }
.end annotation


# static fields
.field private static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.android.chrome"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.chrome.beta"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.chrome.dev"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "org.mozilla.firefox"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.microsoft.emmx"

    aput-object v2, v0, v1

    .line 1
    sput-object v0, Lcom/netease/mpay/oversea/ec;->a:[Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;I)I
    .locals 3

    .line 37
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string v0, "status_bar_height"

    const-string v1, "dimen"

    const-string v2, "android"

    .line 38
    invoke-virtual {p0, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 40
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return p1
.end method

.method public static a(Landroid/content/res/Resources;I)I
    .locals 2

    .line 32
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    .line 33
    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p0

    return p0

    .line 35
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    return p0
.end method

.method public static a(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 31
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/drawable/StateListDrawable;
    .locals 5

    .line 21
    :try_start_0
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 22
    invoke-static {p0, p1}, Lcom/netease/mpay/oversea/ec;->a(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 23
    invoke-static {p0, p2}, Lcom/netease/mpay/oversea/ec;->a(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 24
    invoke-static {p0, p3}, Lcom/netease/mpay/oversea/ec;->a(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    const/4 p3, 0x2

    new-array p3, p3, [I

    const v1, 0x101009e

    const/4 v2, 0x0

    aput v1, p3, v2

    const v3, 0x10100a7

    const/4 v4, 0x1

    aput v3, p3, v4

    .line 25
    invoke-virtual {v0, p3, p2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array p3, v4, [I

    aput v3, p3, v2

    .line 26
    invoke-virtual {v0, p3, p2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array p3, v4, [I

    const v3, 0x101009c

    aput v3, p3, v2

    .line 27
    invoke-virtual {v0, p3, p2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array p2, v4, [I

    aput v1, p2, v2

    .line 28
    invoke-virtual {v0, p2, p1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array p2, v4, [I

    const p3, -0x101009e

    aput p3, p2, v2

    .line 29
    invoke-virtual {v0, p2, p0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array p0, v2, [I

    .line 30
    invoke-virtual {v0, p0, p1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Landroid/graphics/drawable/StateListDrawable;
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-static {}, Lcom/netease/mpay/oversea/e4;->a()Lcom/netease/mpay/oversea/e4;

    move-result-object v0

    invoke-virtual {v0, p1, p4, p5}, Lcom/netease/mpay/oversea/e4;->a(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v1

    .line 6
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 7
    invoke-static {}, Lcom/netease/mpay/oversea/e4;->a()Lcom/netease/mpay/oversea/e4;

    move-result-object v0

    invoke-virtual {v0, p2, p4, p5}, Lcom/netease/mpay/oversea/e4;->a(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object p2

    goto :goto_0

    :cond_2
    move-object p2, v1

    :goto_0
    if-nez p2, :cond_3

    move-object p2, p1

    .line 14
    :cond_3
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 15
    invoke-static {}, Lcom/netease/mpay/oversea/e4;->a()Lcom/netease/mpay/oversea/e4;

    move-result-object v0

    invoke-virtual {v0, p3, p4, p5}, Lcom/netease/mpay/oversea/e4;->a(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_4
    if-nez v1, :cond_5

    move-object v1, p1

    .line 20
    :cond_5
    invoke-static {p0, p1, p2, v1}, Lcom/netease/mpay/oversea/ec;->a(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 91
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.support.customtabs.action.CustomTabsService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 95
    new-instance v0, Ljava/util/HashSet;

    sget-object v1, Lcom/netease/mpay/oversea/ec;->a:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 96
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 97
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v1, :cond_0

    .line 98
    iget-object v2, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 99
    iget-object p0, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "http"

    .line 36
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 14

    if-eqz p0, :cond_3

    .line 42
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 43
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/netease/mpay/oversea/R$bool;->netease_mpay_oversea__orientation_landscape:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    const v1, 0x1020002

    .line 44
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const/4 v9, 0x0

    if-eqz v1, :cond_1

    .line 46
    invoke-virtual {v1, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    .line 48
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-gtz v2, :cond_2

    goto :goto_1

    .line 51
    :cond_2
    invoke-static {p0}, Lcom/netease/mpay/oversea/s6;->b(Landroid/content/Context;)Lcom/netease/mpay/oversea/s6;

    move-result-object v10

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v11

    const/4 v2, 0x2

    new-array v12, v2, [Lcom/netease/mpay/oversea/s6$a;

    new-instance v13, Lcom/netease/mpay/oversea/s6$a;

    sget v2, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__web_title_bar:I

    .line 53
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 55
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/netease/mpay/oversea/R$dimen;->netease_mpay_oversea__icon_22:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v7, 0x1

    move-object v2, v13

    move v6, v0

    invoke-direct/range {v2 .. v8}, Lcom/netease/mpay/oversea/s6$a;-><init>(Landroid/view/View;ZZZII)V

    aput-object v13, v12, v9

    new-instance v8, Lcom/netease/mpay/oversea/s6$a;

    sget v2, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__web_content:I

    .line 57
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/netease/mpay/oversea/s6$a;-><init>(Landroid/view/View;ZZZI)V

    const/4 v0, 0x1

    aput-object v8, v12, v0

    .line 58
    invoke-virtual {v10, p0, v11, v12}, Lcom/netease/mpay/oversea/s6;->a(Landroid/content/Context;Landroid/view/Window;[Lcom/netease/mpay/oversea/s6$a;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public static a(Landroid/app/Activity;I)V
    .locals 4

    .line 87
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    .line 88
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "package"

    .line 89
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 90
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static a(Landroid/app/Activity;Landroid/view/View;)V
    .locals 12

    if-eqz p0, :cond_2

    .line 59
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 61
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/netease/mpay/oversea/R$bool;->netease_mpay_oversea__orientation_landscape:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 62
    invoke-static {p0}, Lcom/netease/mpay/oversea/s6;->b(Landroid/content/Context;)Lcom/netease/mpay/oversea/s6;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v9

    const/4 v2, 0x2

    new-array v10, v2, [Lcom/netease/mpay/oversea/s6$a;

    new-instance v11, Lcom/netease/mpay/oversea/s6$a;

    sget v2, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__web_title_bar:I

    .line 64
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 66
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/netease/mpay/oversea/R$dimen;->netease_mpay_oversea__icon_22:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v7, 0x1

    move-object v2, v11

    move v6, v0

    invoke-direct/range {v2 .. v8}, Lcom/netease/mpay/oversea/s6$a;-><init>(Landroid/view/View;ZZZII)V

    const/4 v2, 0x0

    aput-object v11, v10, v2

    new-instance v8, Lcom/netease/mpay/oversea/s6$a;

    sget v2, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__web_content:I

    .line 68
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/netease/mpay/oversea/s6$a;-><init>(Landroid/view/View;ZZZI)V

    const/4 p1, 0x1

    aput-object v8, v10, p1

    .line 69
    invoke-virtual {v1, p0, v9, v10}, Lcom/netease/mpay/oversea/s6;->a(Landroid/content/Context;Landroid/view/Window;[Lcom/netease/mpay/oversea/s6$a;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static a(Landroid/graphics/drawable/Drawable;Landroid/view/View;)V
    .locals 1

    const v0, 0x44cccccc    # 1638.3999f

    .line 73
    invoke-static {p0, p1, v0}, Lcom/netease/mpay/oversea/ec;->a(Landroid/graphics/drawable/Drawable;Landroid/view/View;I)V

    return-void
.end method

.method private static a(Landroid/graphics/drawable/Drawable;Landroid/view/View;I)V
    .locals 8

    if-eqz p1, :cond_3

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 74
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 75
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x16

    if-lt v1, v2, :cond_1

    .line 76
    new-instance v1, Landroid/graphics/drawable/RippleDrawable;

    new-instance v2, Landroid/content/res/ColorStateList;

    const/4 v3, 0x2

    new-array v4, v3, [[I

    const/4 v5, 0x1

    new-array v6, v5, [I

    const v7, 0x10100a7

    aput v7, v6, v0

    aput-object v6, v4, v0

    new-array v6, v5, [I

    const v7, 0x10100a1

    aput v7, v6, v0

    aput-object v6, v4, v5

    new-array v3, v3, [I

    aput p2, v3, v0

    aput p2, v3, v5

    invoke-direct {v2, v4, v3}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    const/4 p2, 0x0

    invoke-direct {v1, v2, p0, p2}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 80
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    const/16 p2, 0x10

    if-lt v1, p2, :cond_2

    .line 82
    new-instance p2, Lcom/netease/mpay/oversea/v0;

    invoke-direct {p2, p0}, Lcom/netease/mpay/oversea/v0;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 83
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 85
    :cond_2
    new-instance p2, Lcom/netease/mpay/oversea/v0;

    invoke-direct {p2, p0}, Lcom/netease/mpay/oversea/v0;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 86
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public static a(Landroid/view/View;I)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 113
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_1

    const/4 v2, 0x1

    .line 114
    invoke-virtual {p0, v2}, Landroid/view/View;->setLayoutDirection(I)V

    .line 116
    :cond_1
    instance-of v2, p0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    .line 117
    check-cast p0, Landroid/view/ViewGroup;

    .line 118
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 120
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 121
    invoke-static {v2, p1}, Lcom/netease/mpay/oversea/ec;->a(Landroid/view/View;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-lt v0, v1, :cond_3

    .line 125
    invoke-virtual {p0, p1}, Landroid/view/View;->setTextDirection(I)V

    :cond_3
    return-void
.end method

.method public static a(Landroid/view/Window;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x8

    .line 41
    invoke-virtual {p0, v0}, Landroid/view/Window;->addFlags(I)V

    return-void
.end method

.method public static a(Lcom/netease/mpay/oversea/g6;Landroid/graphics/drawable/Drawable;Landroid/view/View;)V
    .locals 1

    .line 70
    sget-object v0, Lcom/netease/mpay/oversea/g6;->q:Lcom/netease/mpay/oversea/g6;

    if-eq v0, p0, :cond_1

    sget-object v0, Lcom/netease/mpay/oversea/g6;->s:Lcom/netease/mpay/oversea/g6;

    if-eq v0, p0, :cond_1

    sget-object v0, Lcom/netease/mpay/oversea/g6;->j:Lcom/netease/mpay/oversea/g6;

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/high16 p0, 0x44000000    # 512.0f

    goto :goto_1

    :cond_1
    :goto_0
    const p0, 0x44cccccc    # 1638.3999f

    .line 72
    :goto_1
    invoke-static {p1, p2, p0}, Lcom/netease/mpay/oversea/ec;->a(Landroid/graphics/drawable/Drawable;Landroid/view/View;I)V

    return-void
.end method

.method public static declared-synchronized a(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 4

    const-class v0, Lcom/netease/mpay/oversea/ec;

    monitor-enter v0

    .line 100
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    monitor-exit v0

    return v2

    .line 101
    :cond_0
    :try_start_1
    new-instance v1, Lcom/netease/mpay/oversea/h1;

    invoke-direct {v1, p1}, Lcom/netease/mpay/oversea/h1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Lcom/netease/mpay/oversea/h1;->a(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 102
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v3, "android.intent.action.VIEW"

    .line 103
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 105
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 107
    :try_start_2
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 p0, 0x1

    monitor-exit v0

    return p0

    :catch_0
    :cond_1
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static a(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 109
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v1, 0x0

    .line 110
    aget v2, v0, v1

    const/4 v3, 0x1

    .line 111
    aget v0, v0, v3

    .line 112
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    int-to-float v5, v2

    cmpg-float v4, v4, v5

    if-ltz v4, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v2, v5

    int-to-float v2, v2

    cmpl-float v2, v4, v2

    if-gtz v2, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    int-to-float v4, v0

    cmpg-float v2, v2, v4

    if-ltz v2, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    add-int/2addr v0, p0

    int-to-float p0, v0

    cmpl-float p0, p1, p0

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    return v3

    :cond_1
    :goto_0
    return v1
.end method

.method public static b(Landroid/app/Activity;)V
    .locals 2

    :try_start_0
    const-string v0, "input_method"

    .line 21
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    .line 22
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 23
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object p0

    .line 24
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public static b(Landroid/graphics/drawable/Drawable;Landroid/view/View;I)V
    .locals 0

    if-gtz p2, :cond_0

    const/high16 p2, 0x44000000    # 512.0f

    .line 25
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/netease/mpay/oversea/ec;->a(Landroid/graphics/drawable/Drawable;Landroid/view/View;I)V

    return-void
.end method

.method public static b(Landroid/view/Window;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/4 v2, 0x1

    .line 3
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 5
    invoke-virtual {p0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 8
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const/16 v1, 0xb

    const/16 v2, 0x13

    if-le v0, v1, :cond_2

    if-ge v0, v2, :cond_2

    const/16 v0, 0x8

    .line 10
    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    :cond_2
    if-lt v0, v2, :cond_3

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    or-int/lit16 v0, v0, 0x100

    or-int/lit8 v0, v0, 0x2

    or-int/lit16 v0, v0, 0x1000

    .line 20
    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_3
    :goto_0
    return-void
.end method

.method public static b(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 26
    fill-array-data v1, :array_0

    .line 27
    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 28
    aget v2, v1, v0

    const/4 v3, 0x1

    .line 29
    aget v1, v1, v3

    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v4, v1

    .line 31
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    add-int/2addr p0, v2

    .line 32
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    int-to-float v2, v2

    cmpl-float v2, v5, v2

    if-lez v2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    int-to-float p0, p0

    cmpg-float p0, v2, p0

    if-gez p0, :cond_0

    .line 33
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p0

    int-to-float v1, v1

    cmpl-float p0, p0, v1

    if-lez p0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p0

    int-to-float p1, v4

    cmpg-float p0, p0, p1

    if-ltz p0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public static c(Landroid/view/Window;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/4 v2, 0x1

    .line 3
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 5
    invoke-virtual {p0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 8
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const/16 v1, 0xb

    const/16 v2, 0x13

    if-le v0, v1, :cond_2

    if-ge v0, v2, :cond_2

    const/16 v0, 0x8

    .line 10
    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    :cond_2
    if-lt v0, v2, :cond_3

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    or-int/lit16 v0, v0, 0x200

    or-int/lit16 v0, v0, 0x100

    or-int/lit16 v0, v0, 0x400

    or-int/lit8 v0, v0, 0x2

    or-int/lit16 v0, v0, 0x1000

    or-int/lit8 v0, v0, 0x4

    .line 20
    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_3
    :goto_0
    return-void
.end method

.method public static c(Landroid/app/Activity;)Z
    .locals 2

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    .line 21
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    .line 22
    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne p0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static d(Landroid/view/Window;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x8

    .line 1
    invoke-virtual {p0, v0}, Landroid/view/Window;->clearFlags(I)V

    return-void
.end method
