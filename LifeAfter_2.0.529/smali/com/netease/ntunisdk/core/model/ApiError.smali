.class public Lcom/netease/ntunisdk/core/model/ApiError;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final ERR_ACCOUNT_NOT_EXIST:I = 0x2718

.field public static final ERR_API_LOGIN_CANCEL:I = 0x271c

.field public static final ERR_API_LOGIN_FAILED:I = 0x271b

.field public static final ERR_API_PAY_CANCEL:I = 0x2721

.field public static final ERR_API_PAY_FAILED:I = 0x2720

.field public static final ERR_API_QUICK_LOGIN_ACCOUNT_ERROR:I = 0x2725

.field public static final ERR_API_QUICK_LOGIN_DISABLE:I = 0x2726

.field public static final ERR_API_SERVICE:I = 0x271d

.field public static final ERR_API_SERVICE_DISABLE:I = 0x271f

.field public static final ERR_API_SERVICE_NEED_UPDATE:I = 0x271e

.field public static final ERR_CANCEL:I = 0x2713

.field public static final ERR_CLOSE_VIEW:I = 0x2717

.field public static final ERR_DELETE_ACCOUNT:I = 0x2719

.field public static final ERR_FORBIDDEN:I = 0x2716

.field public static final ERR_LOGIN_FAILED:I = 0x2711

.field public static final ERR_LOGOUT:I = 0x2715

.field public static final ERR_NETWORK:I = 0x2714

.field public static final ERR_RETRY:I = 0x2712


# instance fields
.field private final a:Ljava/lang/String;

.field public alertType:Lcom/netease/ntunisdk/core/model/AlertType;

.field private b:I

.field public boundTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field public verifyUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/core/model/ApiError;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 8

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netease/ntunisdk/core/model/AlertType;->NO_ALERTER:Lcom/netease/ntunisdk/core/model/AlertType;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/netease/ntunisdk/core/model/AlertType;->DIALOG:Lcom/netease/ntunisdk/core/model/AlertType;

    :goto_0
    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p1

    invoke-direct/range {v1 .. v7}, Lcom/netease/ntunisdk/core/model/ApiError;-><init>(ILjava/lang/String;ILcom/netease/ntunisdk/core/model/AlertType;Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;I)V
    .locals 8

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netease/ntunisdk/core/model/AlertType;->NO_ALERTER:Lcom/netease/ntunisdk/core/model/AlertType;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/netease/ntunisdk/core/model/AlertType;->DIALOG:Lcom/netease/ntunisdk/core/model/AlertType;

    :goto_0
    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v1 .. v7}, Lcom/netease/ntunisdk/core/model/ApiError;-><init>(ILjava/lang/String;ILcom/netease/ntunisdk/core/model/AlertType;Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;ILcom/netease/ntunisdk/core/model/AlertType;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "I",
            "Lcom/netease/ntunisdk/core/model/AlertType;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/ntunisdk/core/model/ApiError;->boundTypes:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Lcom/netease/ntunisdk/core/model/ApiError;->c:I

    iput p1, p0, Lcom/netease/ntunisdk/core/model/ApiError;->b:I

    iput p3, p0, Lcom/netease/ntunisdk/core/model/ApiError;->c:I

    iput-object p2, p0, Lcom/netease/ntunisdk/core/model/ApiError;->a:Ljava/lang/String;

    iput-object p4, p0, Lcom/netease/ntunisdk/core/model/ApiError;->alertType:Lcom/netease/ntunisdk/core/model/AlertType;

    iput-object p5, p0, Lcom/netease/ntunisdk/core/model/ApiError;->verifyUrl:Ljava/lang/String;

    if-eqz p6, :cond_0

    iget-object p1, p0, Lcom/netease/ntunisdk/core/model/ApiError;->boundTypes:Ljava/util/ArrayList;

    invoke-virtual {p1, p6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x2711

    invoke-direct {p0, v0, p1}, Lcom/netease/ntunisdk/core/model/ApiError;-><init>(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public couldRetry()Z
    .locals 2

    iget v0, p0, Lcom/netease/ntunisdk/core/model/ApiError;->b:I

    const/16 v1, 0x2712

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getApiCode()I
    .locals 1

    iget v0, p0, Lcom/netease/ntunisdk/core/model/ApiError;->c:I

    return v0
.end method

.method public getCode()I
    .locals 1

    iget v0, p0, Lcom/netease/ntunisdk/core/model/ApiError;->b:I

    return v0
.end method

.method public getReason()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netease/ntunisdk/core/model/ApiError;->a:Ljava/lang/String;

    return-object v0
.end method

.method public isAccountDelete()Z
    .locals 2

    iget v0, p0, Lcom/netease/ntunisdk/core/model/ApiError;->b:I

    const/16 v1, 0x2719

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isAccountNotExist()Z
    .locals 2

    iget v0, p0, Lcom/netease/ntunisdk/core/model/ApiError;->b:I

    const/16 v1, 0x2718

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isCancel()Z
    .locals 2

    iget v0, p0, Lcom/netease/ntunisdk/core/model/ApiError;->b:I

    const/16 v1, 0x2713

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isCloseView()Z
    .locals 2

    iget v0, p0, Lcom/netease/ntunisdk/core/model/ApiError;->b:I

    const/16 v1, 0x2717

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isLoginConflict()Z
    .locals 1

    iget v0, p0, Lcom/netease/ntunisdk/core/model/ApiError;->c:I

    invoke-static {v0}, Lcom/netease/ntunisdk/core/model/ServerCode;->isLoginConflict(I)Z

    move-result v0

    return v0
.end method

.method public isLogout()Z
    .locals 2

    iget v0, p0, Lcom/netease/ntunisdk/core/model/ApiError;->b:I

    const/16 v1, 0x2715

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isNetError()Z
    .locals 2

    iget v0, p0, Lcom/netease/ntunisdk/core/model/ApiError;->b:I

    const/16 v1, 0x2714

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setApiCode(I)V
    .locals 0

    iput p1, p0, Lcom/netease/ntunisdk/core/model/ApiError;->c:I

    return-void
.end method

.method public setCode(I)V
    .locals 0

    iput p1, p0, Lcom/netease/ntunisdk/core/model/ApiError;->b:I

    return-void
.end method
