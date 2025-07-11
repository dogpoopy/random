.class public Lcom/netease/ntunisdk/core/skins/Skin;
.super Ljava/lang/Object;


# instance fields
.field public mAssetManager:Landroid/content/res/AssetManager;

.field public mPackageName:Ljava/lang/String;

.field public mRes:Landroid/content/res/Resources;

.field public mTheme:Landroid/content/res/Resources$Theme;

.field public mTypeface:Landroid/graphics/Typeface;

.field public path:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/ntunisdk/core/skins/Skin;->mRes:Landroid/content/res/Resources;

    iput-object v0, p0, Lcom/netease/ntunisdk/core/skins/Skin;->mAssetManager:Landroid/content/res/AssetManager;

    iput-object v0, p0, Lcom/netease/ntunisdk/core/skins/Skin;->mTheme:Landroid/content/res/Resources$Theme;

    return-void
.end method
