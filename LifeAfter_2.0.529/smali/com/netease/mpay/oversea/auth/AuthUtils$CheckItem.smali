.class Lcom/netease/mpay/oversea/auth/AuthUtils$CheckItem;
.super Ljava/lang/Object;
.source "AuthUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/oversea/auth/AuthUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CheckItem"
.end annotation


# instance fields
.field final checkCode:I

.field final checkKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    iput-object p1, p0, Lcom/netease/mpay/oversea/auth/AuthUtils$CheckItem;->checkKey:Ljava/lang/String;

    .line 162
    iput p2, p0, Lcom/netease/mpay/oversea/auth/AuthUtils$CheckItem;->checkCode:I

    return-void
.end method
