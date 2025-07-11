.class public interface abstract Lcom/netease/ntunisdk/piclib/constant/ConstLanguage;
.super Ljava/lang/Object;
.source "ConstLanguage.java"


# static fields
.field public static final SUPPORTED_LANGUAGE:[Ljava/lang/String;

.field public static final ar:Ljava/lang/String; = "ar"

.field public static final de:Ljava/lang/String; = "de"

.field public static final en:Ljava/lang/String; = "en"

.field public static final es:Ljava/lang/String; = "es"

.field public static final fr:Ljava/lang/String; = "fr"

.field public static final id:Ljava/lang/String; = "id"

.field public static final idTarget:Ljava/lang/String; = "in"

.field public static final ja:Ljava/lang/String; = "ja"

.field public static final ko:Ljava/lang/String; = "ko"

.field public static final pt:Ljava/lang/String; = "pt"

.field public static final ru:Ljava/lang/String; = "ru"

.field public static final th:Ljava/lang/String; = "th"

.field public static final tr:Ljava/lang/String; = "tr"

.field public static final zhHans:Ljava/lang/String; = "zh-Hans"

.field public static final zhHant:Ljava/lang/String; = "zh-Hant"


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const-string v0, "zh-Hans"

    const-string v1, "zh-Hant"

    const-string v2, "en"

    const-string v3, "ja"

    const-string v4, "ko"

    const-string v5, "ar"

    const-string v6, "de"

    const-string v7, "es"

    const-string v8, "fr"

    const-string v9, "id"

    const-string v10, "pt"

    const-string v11, "ru"

    const-string v12, "tr"

    const-string v13, "th"

    .line 20
    filled-new-array/range {v0 .. v13}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/ntunisdk/piclib/constant/ConstLanguage;->SUPPORTED_LANGUAGE:[Ljava/lang/String;

    return-void
.end method
