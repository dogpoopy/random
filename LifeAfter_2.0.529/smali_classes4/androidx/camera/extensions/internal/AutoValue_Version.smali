.class final Landroidx/camera/extensions/internal/AutoValue_Version;
.super Landroidx/camera/extensions/internal/Version;
.source "AutoValue_Version.java"


# instance fields
.field private final description:Ljava/lang/String;

.field private final major:I

.field private final minor:I

.field private final patch:I


# direct methods
.method constructor <init>(IIILjava/lang/String;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Landroidx/camera/extensions/internal/Version;-><init>()V

    .line 21
    iput p1, p0, Landroidx/camera/extensions/internal/AutoValue_Version;->major:I

    .line 22
    iput p2, p0, Landroidx/camera/extensions/internal/AutoValue_Version;->minor:I

    .line 23
    iput p3, p0, Landroidx/camera/extensions/internal/AutoValue_Version;->patch:I

    const-string p1, "Null description"

    .line 25
    invoke-static {p4, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 27
    iput-object p4, p0, Landroidx/camera/extensions/internal/AutoValue_Version;->description:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method getDescription()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Landroidx/camera/extensions/internal/AutoValue_Version;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getMajor()I
    .locals 1

    .line 32
    iget v0, p0, Landroidx/camera/extensions/internal/AutoValue_Version;->major:I

    return v0
.end method

.method getMinor()I
    .locals 1

    .line 37
    iget v0, p0, Landroidx/camera/extensions/internal/AutoValue_Version;->minor:I

    return v0
.end method

.method getPatch()I
    .locals 1

    .line 42
    iget v0, p0, Landroidx/camera/extensions/internal/AutoValue_Version;->patch:I

    return v0
.end method
