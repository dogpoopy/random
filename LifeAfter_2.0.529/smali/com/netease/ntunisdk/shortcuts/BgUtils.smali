.class public Lcom/netease/ntunisdk/shortcuts/BgUtils;
.super Ljava/lang/Object;
.source "BgUtils.java"


# static fields
.field public static UNISDK_QUICKQR_BG_RES_NAME:Ljava/lang/String; = "ntunisdk_quickqr__assist_background"

.field private static quickQrBgResId:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getQuickQrBgResId(Landroid/app/Activity;)I
    .locals 3

    .line 11
    sget v0, Lcom/netease/ntunisdk/shortcuts/BgUtils;->quickQrBgResId:I

    if-lez v0, :cond_0

    return v0

    .line 14
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/netease/ntunisdk/shortcuts/BgUtils;->UNISDK_QUICKQR_BG_RES_NAME:Ljava/lang/String;

    const-string v2, "drawable"

    .line 15
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 14
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    sput p0, Lcom/netease/ntunisdk/shortcuts/BgUtils;->quickQrBgResId:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    :catch_0
    sget p0, Lcom/netease/ntunisdk/shortcuts/BgUtils;->quickQrBgResId:I

    return p0
.end method
