.class public final synthetic Lcom/google/firebase/-$$Lambda$FirebaseCommonRegistrar$sUt18gVyvEV5RL6q8HJBhUltbQU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/firebase/platforminfo/LibraryVersionComponent$VersionExtractor;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/firebase/-$$Lambda$FirebaseCommonRegistrar$sUt18gVyvEV5RL6q8HJBhUltbQU;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/-$$Lambda$FirebaseCommonRegistrar$sUt18gVyvEV5RL6q8HJBhUltbQU;

    invoke-direct {v0}, Lcom/google/firebase/-$$Lambda$FirebaseCommonRegistrar$sUt18gVyvEV5RL6q8HJBhUltbQU;-><init>()V

    sput-object v0, Lcom/google/firebase/-$$Lambda$FirebaseCommonRegistrar$sUt18gVyvEV5RL6q8HJBhUltbQU;->INSTANCE:Lcom/google/firebase/-$$Lambda$FirebaseCommonRegistrar$sUt18gVyvEV5RL6q8HJBhUltbQU;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final extract(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    check-cast p1, Landroid/content/Context;

    invoke-static {p1}, Lcom/google/firebase/FirebaseCommonRegistrar;->lambda$getComponents$2(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
