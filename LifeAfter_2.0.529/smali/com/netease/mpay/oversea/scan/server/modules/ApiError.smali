.class public Lcom/netease/mpay/oversea/scan/server/modules/ApiError;
.super Ljava/lang/Object;
.source "ApiError.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final ERR_DEFAULT:I = 0x2711

.field public static final ERR_NETWORK:I = 0x2714

.field private static final serialVersionUID:J = -0x462154506303bb0cL


# instance fields
.field public alertType:Lcom/netease/mpay/oversea/scan/server/modules/AlertType;

.field public boundTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public code:I

.field public faqUrl:Ljava/lang/String;

.field public reason:Ljava/lang/String;

.field public verifyUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 24
    sget-object v3, Lcom/netease/mpay/oversea/scan/server/modules/AlertType;->DIALOG:Lcom/netease/mpay/oversea/scan/server/modules/AlertType;

    const/16 v1, 0x2711

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/netease/mpay/oversea/scan/server/modules/ApiError;-><init>(ILjava/lang/String;Lcom/netease/mpay/oversea/scan/server/modules/AlertType;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 8

    .line 33
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    sget-object v0, Lcom/netease/mpay/oversea/scan/server/modules/AlertType;->NO_ALERTER:Lcom/netease/mpay/oversea/scan/server/modules/AlertType;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/netease/mpay/oversea/scan/server/modules/AlertType;->DIALOG:Lcom/netease/mpay/oversea/scan/server/modules/AlertType;

    :goto_0
    move-object v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    .line 33
    invoke-direct/range {v1 .. v7}, Lcom/netease/mpay/oversea/scan/server/modules/ApiError;-><init>(ILjava/lang/String;Lcom/netease/mpay/oversea/scan/server/modules/AlertType;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lcom/netease/mpay/oversea/scan/server/modules/AlertType;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/netease/mpay/oversea/scan/server/modules/AlertType;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/mpay/oversea/scan/server/modules/ApiError;->boundTypes:Ljava/util/ArrayList;

    .line 39
    iput p1, p0, Lcom/netease/mpay/oversea/scan/server/modules/ApiError;->code:I

    .line 40
    iput-object p2, p0, Lcom/netease/mpay/oversea/scan/server/modules/ApiError;->reason:Ljava/lang/String;

    .line 41
    iput-object p3, p0, Lcom/netease/mpay/oversea/scan/server/modules/ApiError;->alertType:Lcom/netease/mpay/oversea/scan/server/modules/AlertType;

    .line 42
    iput-object p4, p0, Lcom/netease/mpay/oversea/scan/server/modules/ApiError;->faqUrl:Ljava/lang/String;

    .line 43
    iput-object p5, p0, Lcom/netease/mpay/oversea/scan/server/modules/ApiError;->verifyUrl:Ljava/lang/String;

    if-eqz p6, :cond_0

    .line 45
    iget-object p1, p0, Lcom/netease/mpay/oversea/scan/server/modules/ApiError;->boundTypes:Ljava/util/ArrayList;

    invoke-virtual {p1, p6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 8

    .line 28
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    sget-object v0, Lcom/netease/mpay/oversea/scan/server/modules/AlertType;->NO_ALERTER:Lcom/netease/mpay/oversea/scan/server/modules/AlertType;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/netease/mpay/oversea/scan/server/modules/AlertType;->DIALOG:Lcom/netease/mpay/oversea/scan/server/modules/AlertType;

    :goto_0
    move-object v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v2, 0x2711

    move-object v1, p0

    move-object v3, p1

    .line 28
    invoke-direct/range {v1 .. v7}, Lcom/netease/mpay/oversea/scan/server/modules/ApiError;-><init>(ILjava/lang/String;Lcom/netease/mpay/oversea/scan/server/modules/AlertType;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 50
    iget v0, p0, Lcom/netease/mpay/oversea/scan/server/modules/ApiError;->code:I

    return v0
.end method
