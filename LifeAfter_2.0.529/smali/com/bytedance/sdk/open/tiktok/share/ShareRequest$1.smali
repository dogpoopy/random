.class synthetic Lcom/bytedance/sdk/open/tiktok/share/ShareRequest$1;
.super Ljava/lang/Object;
.source "ShareRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/open/tiktok/share/ShareRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$bytedance$sdk$open$tiktok$share$ShareRequest$MediaType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 86
    invoke-static {}, Lcom/bytedance/sdk/open/tiktok/share/ShareRequest$MediaType;->values()[Lcom/bytedance/sdk/open/tiktok/share/ShareRequest$MediaType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/bytedance/sdk/open/tiktok/share/ShareRequest$1;->$SwitchMap$com$bytedance$sdk$open$tiktok$share$ShareRequest$MediaType:[I

    :try_start_0
    sget-object v0, Lcom/bytedance/sdk/open/tiktok/share/ShareRequest$1;->$SwitchMap$com$bytedance$sdk$open$tiktok$share$ShareRequest$MediaType:[I

    sget-object v1, Lcom/bytedance/sdk/open/tiktok/share/ShareRequest$MediaType;->IMAGE:Lcom/bytedance/sdk/open/tiktok/share/ShareRequest$MediaType;

    invoke-virtual {v1}, Lcom/bytedance/sdk/open/tiktok/share/ShareRequest$MediaType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/bytedance/sdk/open/tiktok/share/ShareRequest$1;->$SwitchMap$com$bytedance$sdk$open$tiktok$share$ShareRequest$MediaType:[I

    sget-object v1, Lcom/bytedance/sdk/open/tiktok/share/ShareRequest$MediaType;->VIDEO:Lcom/bytedance/sdk/open/tiktok/share/ShareRequest$MediaType;

    invoke-virtual {v1}, Lcom/bytedance/sdk/open/tiktok/share/ShareRequest$MediaType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
