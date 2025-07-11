.class synthetic Lcom/netease/ntunisdk/extend/NetworkCardManager$5;
.super Ljava/lang/Object;
.source "NetworkCardManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/extend/NetworkCardManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$netease$ntunisdk$extend$NetworkCardManager$NetworkType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 268
    invoke-static {}, Lcom/netease/ntunisdk/extend/NetworkCardManager$NetworkType;->values()[Lcom/netease/ntunisdk/extend/NetworkCardManager$NetworkType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/netease/ntunisdk/extend/NetworkCardManager$5;->$SwitchMap$com$netease$ntunisdk$extend$NetworkCardManager$NetworkType:[I

    :try_start_0
    sget-object v0, Lcom/netease/ntunisdk/extend/NetworkCardManager$5;->$SwitchMap$com$netease$ntunisdk$extend$NetworkCardManager$NetworkType:[I

    sget-object v1, Lcom/netease/ntunisdk/extend/NetworkCardManager$NetworkType;->MOBILE:Lcom/netease/ntunisdk/extend/NetworkCardManager$NetworkType;

    invoke-virtual {v1}, Lcom/netease/ntunisdk/extend/NetworkCardManager$NetworkType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/netease/ntunisdk/extend/NetworkCardManager$5;->$SwitchMap$com$netease$ntunisdk$extend$NetworkCardManager$NetworkType:[I

    sget-object v1, Lcom/netease/ntunisdk/extend/NetworkCardManager$NetworkType;->WIFI:Lcom/netease/ntunisdk/extend/NetworkCardManager$NetworkType;

    invoke-virtual {v1}, Lcom/netease/ntunisdk/extend/NetworkCardManager$NetworkType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
