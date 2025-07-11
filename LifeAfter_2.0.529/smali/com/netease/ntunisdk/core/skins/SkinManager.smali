.class public Lcom/netease/ntunisdk/core/skins/SkinManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/ntunisdk/core/skins/SkinManager$a;,
        Lcom/netease/ntunisdk/core/skins/SkinManager$b;,
        Lcom/netease/ntunisdk/core/skins/SkinManager$SkinInitCallback;,
        Lcom/netease/ntunisdk/core/skins/SkinManager$c;
    }
.end annotation


# static fields
.field public static final SUPPORT_SKIN_VERSION:Ljava/lang/String; = "1.0.0"

.field private static a:Lcom/netease/ntunisdk/core/skins/SkinManager;


# instance fields
.field private final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/netease/ntunisdk/core/skins/SkinManager$SkinInitCallback;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/netease/ntunisdk/core/skins/Skin;

.field private f:Lcom/netease/ntunisdk/core/skins/Skin;

.field private g:Z

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Z

.field private m:I


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/ntunisdk/core/skins/SkinManager;->g:Z

    const-string v1, "en"

    iput-object v1, p0, Lcom/netease/ntunisdk/core/skins/SkinManager;->h:Ljava/lang/String;

    const-string v1, "US"

    iput-object v1, p0, Lcom/netease/ntunisdk/core/skins/SkinManager;->i:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/netease/ntunisdk/core/skins/SkinManager;->l:Z

    sget v1, Lcom/netease/ntunisdk/core/skins/SkinManager$c;->a:I

    iput v1, p0, Lcom/netease/ntunisdk/core/skins/SkinManager;->m:I

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/netease/ntunisdk/core/skins/SkinManager;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/netease/ntunisdk/core/skins/SkinManager;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/ntunisdk/core/skins/SkinManager;->d:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic a(Lcom/netease/ntunisdk/core/skins/SkinManager;I)I
    .locals 0

    iput p1, p0, Lcom/netease/ntunisdk/core/skins/SkinManager;->m:I

    return p1
.end method

.method static synthetic a(Lcom/netease/ntunisdk/core/skins/SkinManager;Lcom/netease/ntunisdk/core/skins/Skin;)Lcom/netease/ntunisdk/core/skins/Skin;
    .locals 0

    iput-object p1, p0, Lcom/netease/ntunisdk/core/skins/SkinManager;->f:Lcom/netease/ntunisdk/core/skins/Skin;

    return-object p1
.end method

.method private a(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netease/ntunisdk/core/skins/SkinManager;->e:Lcom/netease/ntunisdk/core/skins/Skin;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/core/skins/SkinManager;->prepare(Landroid/content/Context;)V

    :cond_0
    iget-object p1, p0, Lcom/netease/ntunisdk/core/skins/SkinManager;->e:Lcom/netease/ntunisdk/core/skins/Skin;

    if-nez p1, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    iget-object p1, p1, Lcom/netease/ntunisdk/core/skins/Skin;->mRes:Landroid/content/res/Resources;

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static synthetic a(Lcom/netease/ntunisdk/core/skins/SkinManager;)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/ntunisdk/core/skins/SkinManager;->g:Z

    return v0
.end method

.method static synthetic b(Lcom/netease/ntunisdk/core/skins/SkinManager;Lcom/netease/ntunisdk/core/skins/Skin;)Lcom/netease/ntunisdk/core/skins/Skin;
    .locals 0

    iput-object p1, p0, Lcom/netease/ntunisdk/core/skins/SkinManager;->e:Lcom/netease/ntunisdk/core/skins/Skin;

    return-object p1
.end method

.method static synthetic b(Lcom/netease/ntunisdk/core/skins/SkinManager;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/netease/ntunisdk/core/skins/SkinManager;->d:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic c(Lcom/netease/ntunisdk/core/skins/SkinManager;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/netease/ntunisdk/core/skins/SkinManager;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic d(Lcom/netease/ntunisdk/core/skins/SkinManager;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/netease/ntunisdk/core/skins/SkinManager;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static declared-synchronized getInstance()Lcom/netease/ntunisdk/core/skins/SkinManager;
    .locals 2

    const-class v0, Lcom/netease/ntunisdk/core/skins/SkinManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/netease/ntunisdk/core/skins/SkinManager;->a:Lcom/netease/ntunisdk/core/skins/SkinManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/netease/ntunisdk/core/skins/SkinManager;

    invoke-direct {v1}, Lcom/netease/ntunisdk/core/skins/SkinManager;-><init>()V

    sput-object v1, Lcom/netease/ntunisdk/core/skins/SkinManager;->a:Lcom/netease/ntunisdk/core/skins/SkinManager;

    :cond_0
    sget-object v1, Lcom/netease/ntunisdk/core/skins/SkinManager;->a:Lcom/netease/ntunisdk/core/skins/SkinManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public getAssetManager()Landroid/content/res/AssetManager;
    .locals 1

    invoke-virtual {p0}, Lcom/netease/ntunisdk/core/skins/SkinManager;->isSkinReady()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/ntunisdk/core/skins/SkinManager;->f:Lcom/netease/ntunisdk/core/skins/Skin;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/netease/ntunisdk/core/skins/Skin;->mAssetManager:Landroid/content/res/AssetManager;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/core/skins/SkinManager;->e:Lcom/netease/ntunisdk/core/skins/Skin;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/netease/ntunisdk/core/skins/Skin;->mAssetManager:Landroid/content/res/AssetManager;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getColor(I)I
    .locals 2

    invoke-virtual {p0}, Lcom/netease/ntunisdk/core/skins/SkinManager;->isSkinReady()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/core/skins/SkinManager;->getId(I)I

    move-result p1

    :try_start_0
    iget-object v0, p0, Lcom/netease/ntunisdk/core/skins/SkinManager;->f:Lcom/netease/ntunisdk/core/skins/Skin;

    iget-object v0, v0, Lcom/netease/ntunisdk/core/skins/Skin;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    return v1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/netease/ntunisdk/core/skins/SkinManager;->e:Lcom/netease/ntunisdk/core/skins/Skin;

    iget-object v0, v0, Lcom/netease/ntunisdk/core/skins/Skin;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return p1

    :catch_1
    return v1
.end method

.method public getDimensionPixelOffset(I)I
    .locals 1

    invoke-virtual {p0}, Lcom/netease/ntunisdk/core/skins/SkinManager;->isSkinReady()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/core/skins/SkinManager;->getId(I)I

    move-result p1

    iget-object v0, p0, Lcom/netease/ntunisdk/core/skins/SkinManager;->f:Lcom/netease/ntunisdk/core/skins/Skin;

    :goto_0
    iget-object v0, v0, Lcom/netease/ntunisdk/core/skins/Skin;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/core/skins/SkinManager;->e:Lcom/netease/ntunisdk/core/skins/Skin;

    goto :goto_0
.end method

.method public getDimensionPixelOffset(Ljava/lang/String;)I
    .locals 1

    const-string v0, "dimen"

    invoke-virtual {p0, p1, v0}, Lcom/netease/ntunisdk/core/skins/SkinManager;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0}, Lcom/netease/ntunisdk/core/skins/SkinManager;->isSkinReady()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/ntunisdk/core/skins/SkinManager;->f:Lcom/netease/ntunisdk/core/skins/Skin;

    :goto_0
    iget-object v0, v0, Lcom/netease/ntunisdk/core/skins/Skin;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/core/skins/SkinManager;->e:Lcom/netease/ntunisdk/core/skins/Skin;

    goto :goto_0
.end method

.method public getId(I)I
    .locals 3

    shr-int/lit8 v0, p1, 0x18

    invoke-virtual {p0}, Lcom/netease/ntunisdk/core/skins/SkinManager;->isSkinReady()Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x7f

    if-lt v0, v1, :cond_2

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/netease/ntunisdk/core/skins/SkinManager;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return p1

    :cond_0
    const-string v1, "noah_game__"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    return p1

    :cond_1
    iget-object v1, p0, Lcom/netease/ntunisdk/core/skins/SkinManager;->e:Lcom/netease/ntunisdk/core/skins/Skin;

    iget-object v1, v1, Lcom/netease/ntunisdk/core/skins/Skin;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/netease/ntunisdk/core/skins/SkinManager;->f:Lcom/netease/ntunisdk/core/skins/Skin;

    iget-object v1, v1, Lcom/netease/ntunisdk/core/skins/Skin;->mRes:Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/netease/ntunisdk/core/skins/SkinManager;->f:Lcom/netease/ntunisdk/core/skins/Skin;

    iget-object v2, v2, Lcom/netease/ntunisdk/core/skins/Skin;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v0, p1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    :cond_2
    return p1
.end method

.method public getInteger(I)I
    .locals 1

    invoke-virtual {p0}, Lcom/netease/ntunisdk/core/skins/SkinManager;->isSkinReady()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/core/skins/SkinManager;->getId(I)I

    move-result p1

    iget-object v0, p0, Lcom/netease/ntunisdk/core/skins/SkinManager;->f:Lcom/netease/ntunisdk/core/skins/Skin;

    :goto_0
    iget-object v0, v0, Lcom/netease/ntunisdk/core/skins/Skin;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/core/skins/SkinManager;->e:Lcom/netease/ntunisdk/core/skins/Skin;

    goto :goto_0
.end method

.method public getLayout(Landroid/content/Context;ILandroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 2

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-direct {p0, p1, p2}, Lcom/netease/ntunisdk/core/skins/SkinManager;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/netease/ntunisdk/core/skins/SkinManager;->isSkinReady()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    const-string v1, "noah_game__"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    :try_start_0
    invoke-static {}, Lcom/netease/ntunisdk/core/skins/SkinManager;->getInstance()Lcom/netease/ntunisdk/core/skins/SkinManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/netease/ntunisdk/core/skins/SkinManager;->getId(I)I

    move-result p1

    invoke-virtual {v0, p1, p3, p4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Lcom/netease/ntunisdk/core/skins/SkinManager;->f:Lcom/netease/ntunisdk/core/skins/Skin;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netease/ntunisdk/core/skins/SkinManager;->f:Lcom/netease/ntunisdk/core/skins/Skin;

    iget-object v1, v1, Lcom/netease/ntunisdk/core/skins/Skin;->mTypeface:Landroid/graphics/Typeface;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, p1, v1}, Lcom/netease/ntunisdk/core/skins/SkinManager;->replaceFont(Landroid/view/View;Landroid/graphics/Typeface;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    invoke-virtual {v0, p2, p3, p4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {v0, p2, p3, p4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getOrigin()Lcom/netease/ntunisdk/core/skins/Skin;
    .locals 1

    iget-object v0, p0, Lcom/netease/ntunisdk/core/skins/SkinManager;->e:Lcom/netease/ntunisdk/core/skins/Skin;

    return-object v0
.end method

.method public getOriginResources()Landroid/content/res/Resources;
    .locals 1

    iget-object v0, p0, Lcom/netease/ntunisdk/core/skins/SkinManager;->e:Lcom/netease/ntunisdk/core/skins/Skin;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/netease/ntunisdk/core/skins/Skin;->mRes:Landroid/content/res/Resources;

    return-object v0
.end method

.method public getResId(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    invoke-virtual {p0}, Lcom/netease/ntunisdk/core/skins/SkinManager;->isSkinReady()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/ntunisdk/core/skins/SkinManager;->f:Lcom/netease/ntunisdk/core/skins/Skin;

    iget-object v0, v0, Lcom/netease/ntunisdk/core/skins/Skin;->mRes:Landroid/content/res/Resources;

    iget-object v1, p0, Lcom/netease/ntunisdk/core/skins/SkinManager;->f:Lcom/netease/ntunisdk/core/skins/Skin;

    :goto_0
    iget-object v1, v1, Lcom/netease/ntunisdk/core/skins/Skin;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, p1, p2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/core/skins/SkinManager;->e:Lcom/netease/ntunisdk/core/skins/Skin;

    iget-object v0, v0, Lcom/netease/ntunisdk/core/skins/Skin;->mRes:Landroid/content/res/Resources;

    iget-object v1, p0, Lcom/netease/ntunisdk/core/skins/SkinManager;->e:Lcom/netease/ntunisdk/core/skins/Skin;

    goto :goto_0
.end method

.method public getSkinProxy()Lcom/netease/ntunisdk/core/skins/Skin;
    .locals 1

    iget-object v0, p0, Lcom/netease/ntunisdk/core/skins/SkinManager;->f:Lcom/netease/ntunisdk/core/skins/Skin;

    return-object v0
.end method

.method public getSkinResources()Landroid/content/res/Resources;
    .locals 1

    invoke-virtual {p0}, Lcom/netease/ntunisdk/core/skins/SkinManager;->isSkinReady()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/ntunisdk/core/skins/SkinManager;->f:Lcom/netease/ntunisdk/core/skins/Skin;

    iget-object v0, v0, Lcom/netease/ntunisdk/core/skins/Skin;->mRes:Landroid/content/res/Resources;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTypeFace()Landroid/graphics/Typeface;
    .locals 1

    invoke-virtual {p0}, Lcom/netease/ntunisdk/core/skins/SkinManager;->isSkinReady()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/ntunisdk/core/skins/SkinManager;->f:Lcom/netease/ntunisdk/core/skins/Skin;

    iget-object v0, v0, Lcom/netease/ntunisdk/core/skins/Skin;->mTypeface:Landroid/graphics/Typeface;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasLoaded()Z
    .locals 1

    iget-object v0, p0, Lcom/netease/ntunisdk/core/skins/SkinManager;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized init(Landroid/app/Activity;Lcom/netease/ntunisdk/core/skins/SkinManager$SkinInitCallback;)V
    .locals 10

    monitor-enter p0

    if-eqz p2, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/netease/ntunisdk/core/skins/SkinManager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-boolean p2, p0, Lcom/netease/ntunisdk/core/skins/SkinManager;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/core/skins/SkinManager;->prepare(Landroid/content/Context;)V

    sget p2, Lcom/netease/ntunisdk/core/skins/SkinManager$c;->b:I

    iput p2, p0, Lcom/netease/ntunisdk/core/skins/SkinManager;->m:I

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/netease/ntunisdk/core/skins/SkinManager;->g:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    iget-boolean v1, p0, Lcom/netease/ntunisdk/core/skins/SkinManager;->l:Z

    if-nez v1, :cond_2

    goto/16 :goto_3

    :cond_2
    new-instance v1, Lcom/netease/ntunisdk/core/skins/SkinManager$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/netease/ntunisdk/core/skins/SkinManager$1;-><init>(Lcom/netease/ntunisdk/core/skins/SkinManager;Landroid/os/Looper;)V

    iget-object v5, p0, Lcom/netease/ntunisdk/core/skins/SkinManager;->k:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/ntunisdk/core/skins/SkinManager;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v3, p0, Lcom/netease/ntunisdk/core/skins/SkinManager;->f:Lcom/netease/ntunisdk/core/skins/Skin;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/netease/ntunisdk/core/skins/SkinManager;->f:Lcom/netease/ntunisdk/core/skins/Skin;

    iget-object v4, v3, Lcom/netease/ntunisdk/core/skins/Skin;->mRes:Landroid/content/res/Resources;

    if-eqz v4, :cond_3

    iget-object v4, v3, Lcom/netease/ntunisdk/core/skins/Skin;->mAssetManager:Landroid/content/res/AssetManager;

    if-eqz v4, :cond_3

    iget-object v3, v3, Lcom/netease/ntunisdk/core/skins/Skin;->mTheme:Landroid/content/res/Resources$Theme;

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_4

    goto :goto_1

    :cond_4
    const/4 p2, 0x0

    :goto_1
    invoke-virtual {v2, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p2, p0, Lcom/netease/ntunisdk/core/skins/SkinManager;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/netease/ntunisdk/core/skins/SkinManager;->f:Lcom/netease/ntunisdk/core/skins/Skin;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/ntunisdk/core/skins/SkinManager;->f:Lcom/netease/ntunisdk/core/skins/Skin;

    iget-object v2, v2, Lcom/netease/ntunisdk/core/skins/Skin;->mAssetManager:Landroid/content/res/AssetManager;

    iget-object v3, p0, Lcom/netease/ntunisdk/core/skins/SkinManager;->i:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/ntunisdk/core/skins/SkinManager;->h:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/netease/ntunisdk/core/skins/b;->a(Landroid/content/res/Resources;Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p2, Lcom/netease/ntunisdk/core/skins/Skin;->mRes:Landroid/content/res/Resources;

    iget-object p2, p0, Lcom/netease/ntunisdk/core/skins/SkinManager;->f:Lcom/netease/ntunisdk/core/skins/Skin;

    iget-object v1, p0, Lcom/netease/ntunisdk/core/skins/SkinManager;->j:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/netease/ntunisdk/core/skins/b;->a(Ljava/lang/String;Landroid/content/res/AssetManager;)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p2, Lcom/netease/ntunisdk/core/skins/Skin;->mTypeface:Landroid/graphics/Typeface;

    sget p1, Lcom/netease/ntunisdk/core/skins/SkinManager$c;->c:I

    iput p1, p0, Lcom/netease/ntunisdk/core/skins/SkinManager;->m:I

    iput-boolean v0, p0, Lcom/netease/ntunisdk/core/skins/SkinManager;->g:Z

    iget-object p1, p0, Lcom/netease/ntunisdk/core/skins/SkinManager;->d:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/netease/ntunisdk/core/skins/SkinManager$SkinInitCallback;

    invoke-interface {p2}, Lcom/netease/ntunisdk/core/skins/SkinManager$SkinInitCallback;->onFinish()V

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lcom/netease/ntunisdk/core/skins/SkinManager;->d:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_6
    :try_start_2
    new-instance p2, Ljava/lang/Thread;

    new-instance v0, Lcom/netease/ntunisdk/core/skins/SkinManager$a;

    iget-object v6, p0, Lcom/netease/ntunisdk/core/skins/SkinManager;->j:Ljava/lang/String;

    iget-object v7, p0, Lcom/netease/ntunisdk/core/skins/SkinManager;->i:Ljava/lang/String;

    iget-object v8, p0, Lcom/netease/ntunisdk/core/skins/SkinManager;->h:Ljava/lang/String;

    new-instance v9, Lcom/netease/ntunisdk/core/skins/SkinManager$2;

    invoke-direct {v9, p0, v1}, Lcom/netease/ntunisdk/core/skins/SkinManager$2;-><init>(Lcom/netease/ntunisdk/core/skins/SkinManager;Landroid/os/Handler;)V

    move-object v3, v0

    move-object v4, p1

    invoke-direct/range {v3 .. v9}, Lcom/netease/ntunisdk/core/skins/SkinManager$a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/ntunisdk/core/skins/SkinManager$b;)V

    const-string p1, "skin-loading\u2014thread"

    invoke-direct {p2, v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Thread;->start()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :cond_7
    :goto_3
    :try_start_3
    sget p1, Lcom/netease/ntunisdk/core/skins/SkinManager$c;->a:I

    iput p1, p0, Lcom/netease/ntunisdk/core/skins/SkinManager;->m:I

    iput-boolean v0, p0, Lcom/netease/ntunisdk/core/skins/SkinManager;->g:Z

    iget-object p1, p0, Lcom/netease/ntunisdk/core/skins/SkinManager;->d:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/netease/ntunisdk/core/skins/SkinManager$SkinInitCallback;

    invoke-interface {p2}, Lcom/netease/ntunisdk/core/skins/SkinManager$SkinInitCallback;->onFinish()V

    goto :goto_4

    :cond_8
    iget-object p1, p0, Lcom/netease/ntunisdk/core/skins/SkinManager;->d:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_6

    :goto_5
    throw p1

    :goto_6
    goto :goto_5
.end method

.method public isSkinReady()Z
    .locals 3

    iget-object v0, p0, Lcom/netease/ntunisdk/core/skins/SkinManager;->f:Lcom/netease/ntunisdk/core/skins/Skin;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lcom/netease/ntunisdk/core/skins/SkinManager;->m:I

    sget v2, Lcom/netease/ntunisdk/core/skins/SkinManager$c;->c:I

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public prepare(Landroid/content/Context;)V
    .locals 3

    iget-object v0, p0, Lcom/netease/ntunisdk/core/skins/SkinManager;->e:Lcom/netease/ntunisdk/core/skins/Skin;

    if-nez v0, :cond_0

    new-instance v0, Lcom/netease/ntunisdk/core/skins/Skin;

    invoke-direct {v0}, Lcom/netease/ntunisdk/core/skins/Skin;-><init>()V

    iput-object v0, p0, Lcom/netease/ntunisdk/core/skins/SkinManager;->e:Lcom/netease/ntunisdk/core/skins/Skin;

    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/core/skins/SkinManager;->e:Lcom/netease/ntunisdk/core/skins/Skin;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, v0, Lcom/netease/ntunisdk/core/skins/Skin;->mRes:Landroid/content/res/Resources;

    iget-object v0, p0, Lcom/netease/ntunisdk/core/skins/SkinManager;->e:Lcom/netease/ntunisdk/core/skins/Skin;

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    iput-object v1, v0, Lcom/netease/ntunisdk/core/skins/Skin;->mAssetManager:Landroid/content/res/AssetManager;

    iget-object v0, p0, Lcom/netease/ntunisdk/core/skins/SkinManager;->e:Lcom/netease/ntunisdk/core/skins/Skin;

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    iput-object v1, v0, Lcom/netease/ntunisdk/core/skins/Skin;->mTheme:Landroid/content/res/Resources$Theme;

    iget-object v0, p0, Lcom/netease/ntunisdk/core/skins/SkinManager;->e:Lcom/netease/ntunisdk/core/skins/Skin;

    const-string v1, ""

    iput-object v1, v0, Lcom/netease/ntunisdk/core/skins/Skin;->path:Ljava/lang/String;

    iget-object v0, v0, Lcom/netease/ntunisdk/core/skins/Skin;->mPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/ntunisdk/core/skins/SkinManager;->e:Lcom/netease/ntunisdk/core/skins/Skin;

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object p1, v0, Lcom/netease/ntunisdk/core/skins/Skin;->mPackageName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    iget-object p1, p0, Lcom/netease/ntunisdk/core/skins/SkinManager;->e:Lcom/netease/ntunisdk/core/skins/Skin;

    iput-object v1, p1, Lcom/netease/ntunisdk/core/skins/Skin;->mPackageName:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public replaceFont(Landroid/view/View;Landroid/graphics/Typeface;)V
    .locals 2

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void

    :cond_1
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/netease/ntunisdk/core/skins/SkinManager;->replaceFont(Landroid/view/View;Landroid/graphics/Typeface;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public declared-synchronized reset()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netease/ntunisdk/core/skins/SkinManager;->f:Lcom/netease/ntunisdk/core/skins/Skin;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/ntunisdk/core/skins/SkinManager;->f:Lcom/netease/ntunisdk/core/skins/Skin;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/core/skins/Skin;->reset()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/ntunisdk/core/skins/SkinManager;->f:Lcom/netease/ntunisdk/core/skins/Skin;

    iget-object v0, p0, Lcom/netease/ntunisdk/core/skins/SkinManager;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/netease/ntunisdk/core/skins/SkinManager;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iput-boolean v1, p0, Lcom/netease/ntunisdk/core/skins/SkinManager;->g:Z

    sget v0, Lcom/netease/ntunisdk/core/skins/SkinManager$c;->a:I

    iput v0, p0, Lcom/netease/ntunisdk/core/skins/SkinManager;->m:I

    invoke-static {}, Lcom/netease/ntunisdk/core/skins/audio/SoundBox;->getInstance()Lcom/netease/ntunisdk/core/skins/audio/SoundBox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/ntunisdk/core/skins/audio/SoundBox;->loadSounds()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setCountry(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p2, p0, Lcom/netease/ntunisdk/core/skins/SkinManager;->h:Ljava/lang/String;

    iput-object p1, p0, Lcom/netease/ntunisdk/core/skins/SkinManager;->i:Ljava/lang/String;

    return-void
.end method

.method public setFontPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/ntunisdk/core/skins/SkinManager;->j:Ljava/lang/String;

    return-void
.end method

.method public setSkinPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/ntunisdk/core/skins/SkinManager;->k:Ljava/lang/String;

    return-void
.end method
