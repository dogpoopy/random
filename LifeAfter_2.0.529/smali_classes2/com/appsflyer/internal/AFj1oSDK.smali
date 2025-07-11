.class public final Lcom/appsflyer/internal/AFj1oSDK;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public AFInAppEventParameterName:I

.field public AFKeystoreWrapper:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static values(J[CI)[C
    .locals 10

    .line 1152
    array-length v0, p2

    new-array v0, v0, [C

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x4

    .line 1156
    :goto_0
    array-length v5, p2

    if-ge v2, v5, :cond_2

    ushr-long v5, p0, v2

    const-wide/16 v7, 0x1

    and-long/2addr v5, v7

    int-to-long v7, p3

    cmp-long v9, v5, v7

    if-nez v9, :cond_0

    if-ge v3, v1, :cond_0

    .line 1162
    aget-char v5, p2, v2

    aput-char v5, v0, v3

    goto :goto_1

    .line 1169
    :cond_0
    array-length v5, v0

    if-ge v4, v5, :cond_1

    .line 1171
    aget-char v5, p2, v2

    aput-char v5, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1176
    :cond_1
    aget-char v5, p2, v2

    aput-char v5, v0, v3

    :goto_1
    add-int/lit8 v3, v3, 0x1

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method
