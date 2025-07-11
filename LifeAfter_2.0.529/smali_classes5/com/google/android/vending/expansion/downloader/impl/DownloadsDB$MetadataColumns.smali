.class public Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB$MetadataColumns;
.super Ljava/lang/Object;
.source "DownloadsDB.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MetadataColumns"
.end annotation


# static fields
.field public static final APKVERSION:Ljava/lang/String; = "APKVERSION"

.field public static final DOWNLOAD_STATUS:Ljava/lang/String; = "DOWNLOADSTATUS"

.field public static final FLAGS:Ljava/lang/String; = "DOWNLOADFLAGS"

.field public static final SCHEMA:[[Ljava/lang/String;

.field public static final TABLE_NAME:Ljava/lang/String; = "MetadataColumns"

.field public static final _ID:Ljava/lang/String; = "MetadataColumns._id"


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v0, 0x4

    new-array v0, v0, [[Ljava/lang/String;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "_id"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "INTEGER PRIMARY KEY"

    const/4 v5, 0x1

    aput-object v3, v2, v5

    aput-object v2, v0, v4

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "APKVERSION"

    aput-object v3, v2, v4

    const-string v3, "INTEGER"

    aput-object v3, v2, v5

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/String;

    const-string v6, "DOWNLOADSTATUS"

    aput-object v6, v2, v4

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "DOWNLOADFLAGS"

    aput-object v2, v1, v4

    aput-object v3, v1, v5

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 225
    sput-object v0, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB$MetadataColumns;->SCHEMA:[[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
