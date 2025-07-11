.class public final enum Lcom/appsflyer/internal/platform_extension/Plugin;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/appsflyer/internal/platform_extension/Plugin;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\u0008\u0017\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\u0008\u0002\u0012\u0006\u0010\u0008\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\t\u0010\nR\u001a\u0010\u0007\u001a\u00020\u00028\u0007X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013j\u0002\u0008\u0014j\u0002\u0008\u0015j\u0002\u0008\u0016j\u0002\u0008\u0017j\u0002\u0008\u0018j\u0002\u0008\u0019"
    }
    d2 = {
        "Lcom/appsflyer/internal/platform_extension/Plugin;",
        "",
        "",
        "values",
        "Ljava/lang/String;",
        "getPluginName",
        "()Ljava/lang/String;",
        "pluginName",
        "p0",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "NATIVE",
        "UNITY",
        "FLUTTER",
        "REACT_NATIVE",
        "ADOBE_AIR",
        "ADOBE_MOBILE",
        "COCOS_2DX",
        "CORDOVA",
        "MPARTICLE",
        "NATIVE_SCRIPT",
        "EXPO",
        "UNREAL",
        "XAMARIN",
        "CAPACITOR",
        "SEGMENT"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final enum ADOBE_AIR:Lcom/appsflyer/internal/platform_extension/Plugin;

.field public static final enum ADOBE_MOBILE:Lcom/appsflyer/internal/platform_extension/Plugin;

.field public static final enum CAPACITOR:Lcom/appsflyer/internal/platform_extension/Plugin;

.field public static final enum COCOS_2DX:Lcom/appsflyer/internal/platform_extension/Plugin;

.field public static final enum CORDOVA:Lcom/appsflyer/internal/platform_extension/Plugin;

.field public static final enum EXPO:Lcom/appsflyer/internal/platform_extension/Plugin;

.field public static final enum FLUTTER:Lcom/appsflyer/internal/platform_extension/Plugin;

.field public static final enum MPARTICLE:Lcom/appsflyer/internal/platform_extension/Plugin;

.field public static final enum NATIVE:Lcom/appsflyer/internal/platform_extension/Plugin;

.field public static final enum NATIVE_SCRIPT:Lcom/appsflyer/internal/platform_extension/Plugin;

.field public static final enum REACT_NATIVE:Lcom/appsflyer/internal/platform_extension/Plugin;

.field public static final enum SEGMENT:Lcom/appsflyer/internal/platform_extension/Plugin;

.field public static final enum UNITY:Lcom/appsflyer/internal/platform_extension/Plugin;

.field public static final enum UNREAL:Lcom/appsflyer/internal/platform_extension/Plugin;

.field public static final enum XAMARIN:Lcom/appsflyer/internal/platform_extension/Plugin;

.field private static final synthetic valueOf:[Lcom/appsflyer/internal/platform_extension/Plugin;


# instance fields
.field private final values:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 10
    new-instance v0, Lcom/appsflyer/internal/platform_extension/Plugin;

    const/4 v1, 0x0

    const-string v2, "NATIVE"

    const-string v3, "android_native"

    invoke-direct {v0, v2, v1, v3}, Lcom/appsflyer/internal/platform_extension/Plugin;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/appsflyer/internal/platform_extension/Plugin;->NATIVE:Lcom/appsflyer/internal/platform_extension/Plugin;

    .line 11
    new-instance v0, Lcom/appsflyer/internal/platform_extension/Plugin;

    const/4 v2, 0x1

    const-string v3, "UNITY"

    const-string v4, "android_unity"

    invoke-direct {v0, v3, v2, v4}, Lcom/appsflyer/internal/platform_extension/Plugin;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/appsflyer/internal/platform_extension/Plugin;->UNITY:Lcom/appsflyer/internal/platform_extension/Plugin;

    .line 12
    new-instance v0, Lcom/appsflyer/internal/platform_extension/Plugin;

    const/4 v3, 0x2

    const-string v4, "FLUTTER"

    const-string v5, "android_flutter"

    invoke-direct {v0, v4, v3, v5}, Lcom/appsflyer/internal/platform_extension/Plugin;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/appsflyer/internal/platform_extension/Plugin;->FLUTTER:Lcom/appsflyer/internal/platform_extension/Plugin;

    .line 13
    new-instance v0, Lcom/appsflyer/internal/platform_extension/Plugin;

    const/4 v4, 0x3

    const-string v5, "REACT_NATIVE"

    const-string v6, "android_react_native"

    invoke-direct {v0, v5, v4, v6}, Lcom/appsflyer/internal/platform_extension/Plugin;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/appsflyer/internal/platform_extension/Plugin;->REACT_NATIVE:Lcom/appsflyer/internal/platform_extension/Plugin;

    .line 14
    new-instance v0, Lcom/appsflyer/internal/platform_extension/Plugin;

    const/4 v5, 0x4

    const-string v6, "ADOBE_AIR"

    const-string v7, "android_adobe_air"

    invoke-direct {v0, v6, v5, v7}, Lcom/appsflyer/internal/platform_extension/Plugin;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/appsflyer/internal/platform_extension/Plugin;->ADOBE_AIR:Lcom/appsflyer/internal/platform_extension/Plugin;

    .line 15
    new-instance v0, Lcom/appsflyer/internal/platform_extension/Plugin;

    const/4 v6, 0x5

    const-string v7, "ADOBE_MOBILE"

    const-string v8, "android_adobe_mobile"

    invoke-direct {v0, v7, v6, v8}, Lcom/appsflyer/internal/platform_extension/Plugin;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/appsflyer/internal/platform_extension/Plugin;->ADOBE_MOBILE:Lcom/appsflyer/internal/platform_extension/Plugin;

    .line 16
    new-instance v0, Lcom/appsflyer/internal/platform_extension/Plugin;

    const/4 v7, 0x6

    const-string v8, "COCOS_2DX"

    const-string v9, "android_cocos2dx"

    invoke-direct {v0, v8, v7, v9}, Lcom/appsflyer/internal/platform_extension/Plugin;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/appsflyer/internal/platform_extension/Plugin;->COCOS_2DX:Lcom/appsflyer/internal/platform_extension/Plugin;

    .line 17
    new-instance v0, Lcom/appsflyer/internal/platform_extension/Plugin;

    const/4 v8, 0x7

    const-string v9, "CORDOVA"

    const-string v10, "android_cordova"

    invoke-direct {v0, v9, v8, v10}, Lcom/appsflyer/internal/platform_extension/Plugin;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/appsflyer/internal/platform_extension/Plugin;->CORDOVA:Lcom/appsflyer/internal/platform_extension/Plugin;

    .line 18
    new-instance v0, Lcom/appsflyer/internal/platform_extension/Plugin;

    const/16 v9, 0x8

    const-string v10, "MPARTICLE"

    const-string v11, "android_mparticle"

    invoke-direct {v0, v10, v9, v11}, Lcom/appsflyer/internal/platform_extension/Plugin;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/appsflyer/internal/platform_extension/Plugin;->MPARTICLE:Lcom/appsflyer/internal/platform_extension/Plugin;

    .line 19
    new-instance v0, Lcom/appsflyer/internal/platform_extension/Plugin;

    const/16 v10, 0x9

    const-string v11, "NATIVE_SCRIPT"

    const-string v12, "android_native_script"

    invoke-direct {v0, v11, v10, v12}, Lcom/appsflyer/internal/platform_extension/Plugin;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/appsflyer/internal/platform_extension/Plugin;->NATIVE_SCRIPT:Lcom/appsflyer/internal/platform_extension/Plugin;

    .line 20
    new-instance v0, Lcom/appsflyer/internal/platform_extension/Plugin;

    const/16 v11, 0xa

    const-string v12, "EXPO"

    const-string v13, "android_expo"

    invoke-direct {v0, v12, v11, v13}, Lcom/appsflyer/internal/platform_extension/Plugin;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/appsflyer/internal/platform_extension/Plugin;->EXPO:Lcom/appsflyer/internal/platform_extension/Plugin;

    .line 21
    new-instance v0, Lcom/appsflyer/internal/platform_extension/Plugin;

    const/16 v12, 0xb

    const-string v13, "UNREAL"

    const-string v14, "android_unreal"

    invoke-direct {v0, v13, v12, v14}, Lcom/appsflyer/internal/platform_extension/Plugin;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/appsflyer/internal/platform_extension/Plugin;->UNREAL:Lcom/appsflyer/internal/platform_extension/Plugin;

    .line 22
    new-instance v0, Lcom/appsflyer/internal/platform_extension/Plugin;

    const/16 v13, 0xc

    const-string v14, "XAMARIN"

    const-string v15, "android_xamarin"

    invoke-direct {v0, v14, v13, v15}, Lcom/appsflyer/internal/platform_extension/Plugin;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/appsflyer/internal/platform_extension/Plugin;->XAMARIN:Lcom/appsflyer/internal/platform_extension/Plugin;

    .line 23
    new-instance v0, Lcom/appsflyer/internal/platform_extension/Plugin;

    const/16 v14, 0xd

    const-string v15, "CAPACITOR"

    const-string v13, "android_capacitor"

    invoke-direct {v0, v15, v14, v13}, Lcom/appsflyer/internal/platform_extension/Plugin;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/appsflyer/internal/platform_extension/Plugin;->CAPACITOR:Lcom/appsflyer/internal/platform_extension/Plugin;

    .line 24
    new-instance v0, Lcom/appsflyer/internal/platform_extension/Plugin;

    const/16 v13, 0xe

    const-string v15, "SEGMENT"

    const-string v14, "android_segment"

    invoke-direct {v0, v15, v13, v14}, Lcom/appsflyer/internal/platform_extension/Plugin;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/appsflyer/internal/platform_extension/Plugin;->SEGMENT:Lcom/appsflyer/internal/platform_extension/Plugin;

    const/16 v0, 0xf

    new-array v0, v0, [Lcom/appsflyer/internal/platform_extension/Plugin;

    .line 1000
    sget-object v14, Lcom/appsflyer/internal/platform_extension/Plugin;->NATIVE:Lcom/appsflyer/internal/platform_extension/Plugin;

    aput-object v14, v0, v1

    sget-object v1, Lcom/appsflyer/internal/platform_extension/Plugin;->UNITY:Lcom/appsflyer/internal/platform_extension/Plugin;

    aput-object v1, v0, v2

    sget-object v1, Lcom/appsflyer/internal/platform_extension/Plugin;->FLUTTER:Lcom/appsflyer/internal/platform_extension/Plugin;

    aput-object v1, v0, v3

    sget-object v1, Lcom/appsflyer/internal/platform_extension/Plugin;->REACT_NATIVE:Lcom/appsflyer/internal/platform_extension/Plugin;

    aput-object v1, v0, v4

    sget-object v1, Lcom/appsflyer/internal/platform_extension/Plugin;->ADOBE_AIR:Lcom/appsflyer/internal/platform_extension/Plugin;

    aput-object v1, v0, v5

    sget-object v1, Lcom/appsflyer/internal/platform_extension/Plugin;->ADOBE_MOBILE:Lcom/appsflyer/internal/platform_extension/Plugin;

    aput-object v1, v0, v6

    sget-object v1, Lcom/appsflyer/internal/platform_extension/Plugin;->COCOS_2DX:Lcom/appsflyer/internal/platform_extension/Plugin;

    aput-object v1, v0, v7

    sget-object v1, Lcom/appsflyer/internal/platform_extension/Plugin;->CORDOVA:Lcom/appsflyer/internal/platform_extension/Plugin;

    aput-object v1, v0, v8

    sget-object v1, Lcom/appsflyer/internal/platform_extension/Plugin;->MPARTICLE:Lcom/appsflyer/internal/platform_extension/Plugin;

    aput-object v1, v0, v9

    sget-object v1, Lcom/appsflyer/internal/platform_extension/Plugin;->NATIVE_SCRIPT:Lcom/appsflyer/internal/platform_extension/Plugin;

    aput-object v1, v0, v10

    sget-object v1, Lcom/appsflyer/internal/platform_extension/Plugin;->EXPO:Lcom/appsflyer/internal/platform_extension/Plugin;

    aput-object v1, v0, v11

    sget-object v1, Lcom/appsflyer/internal/platform_extension/Plugin;->UNREAL:Lcom/appsflyer/internal/platform_extension/Plugin;

    aput-object v1, v0, v12

    sget-object v1, Lcom/appsflyer/internal/platform_extension/Plugin;->XAMARIN:Lcom/appsflyer/internal/platform_extension/Plugin;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/appsflyer/internal/platform_extension/Plugin;->CAPACITOR:Lcom/appsflyer/internal/platform_extension/Plugin;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/appsflyer/internal/platform_extension/Plugin;->SEGMENT:Lcom/appsflyer/internal/platform_extension/Plugin;

    aput-object v1, v0, v13

    .line 24
    sput-object v0, Lcom/appsflyer/internal/platform_extension/Plugin;->valueOf:[Lcom/appsflyer/internal/platform_extension/Plugin;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/appsflyer/internal/platform_extension/Plugin;->values:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appsflyer/internal/platform_extension/Plugin;
    .locals 1

    const-class v0, Lcom/appsflyer/internal/platform_extension/Plugin;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/appsflyer/internal/platform_extension/Plugin;

    return-object p0
.end method

.method public static values()[Lcom/appsflyer/internal/platform_extension/Plugin;
    .locals 1

    sget-object v0, Lcom/appsflyer/internal/platform_extension/Plugin;->valueOf:[Lcom/appsflyer/internal/platform_extension/Plugin;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appsflyer/internal/platform_extension/Plugin;

    return-object v0
.end method


# virtual methods
.method public final getPluginName()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/appsflyer/internal/platform_extension/Plugin;->values:Ljava/lang/String;

    return-object v0
.end method
