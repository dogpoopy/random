.class public final Lcom/netease/ntunisdk/core/network/UrlResponse;
.super Ljava/lang/Object;


# static fields
.field public static final CODE_OK_200:I = 0xc8

.field public static final CODE_OK_201:I = 0xc9


# instance fields
.field public code:I

.field public content:[B

.field public headers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isCodeOK(I)Z
    .locals 1

    const/16 v0, 0xc8

    if-eq v0, p0, :cond_1

    const/16 v0, 0xc9

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method
