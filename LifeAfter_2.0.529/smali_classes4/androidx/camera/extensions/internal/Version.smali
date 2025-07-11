.class public abstract Landroidx/camera/extensions/internal/Version;
.super Ljava/lang/Object;
.source "Version.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Landroidx/camera/extensions/internal/Version;",
        ">;"
    }
.end annotation


# static fields
.field public static final VERSION_1_0:Landroidx/camera/extensions/internal/Version;

.field public static final VERSION_1_1:Landroidx/camera/extensions/internal/Version;

.field public static final VERSION_1_2:Landroidx/camera/extensions/internal/Version;

.field public static final VERSION_1_3:Landroidx/camera/extensions/internal/Version;

.field public static final VERSION_1_4:Landroidx/camera/extensions/internal/Version;

.field private static final VERSION_STRING_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, ""

    .line 38
    invoke-static {v0, v1, v1, v2}, Landroidx/camera/extensions/internal/Version;->create(IIILjava/lang/String;)Landroidx/camera/extensions/internal/Version;

    move-result-object v3

    sput-object v3, Landroidx/camera/extensions/internal/Version;->VERSION_1_0:Landroidx/camera/extensions/internal/Version;

    .line 39
    invoke-static {v0, v0, v1, v2}, Landroidx/camera/extensions/internal/Version;->create(IIILjava/lang/String;)Landroidx/camera/extensions/internal/Version;

    move-result-object v3

    sput-object v3, Landroidx/camera/extensions/internal/Version;->VERSION_1_1:Landroidx/camera/extensions/internal/Version;

    const/4 v3, 0x2

    .line 40
    invoke-static {v0, v3, v1, v2}, Landroidx/camera/extensions/internal/Version;->create(IIILjava/lang/String;)Landroidx/camera/extensions/internal/Version;

    move-result-object v3

    sput-object v3, Landroidx/camera/extensions/internal/Version;->VERSION_1_2:Landroidx/camera/extensions/internal/Version;

    const/4 v3, 0x3

    .line 41
    invoke-static {v0, v3, v1, v2}, Landroidx/camera/extensions/internal/Version;->create(IIILjava/lang/String;)Landroidx/camera/extensions/internal/Version;

    move-result-object v3

    sput-object v3, Landroidx/camera/extensions/internal/Version;->VERSION_1_3:Landroidx/camera/extensions/internal/Version;

    const/4 v3, 0x4

    .line 42
    invoke-static {v0, v3, v1, v2}, Landroidx/camera/extensions/internal/Version;->create(IIILjava/lang/String;)Landroidx/camera/extensions/internal/Version;

    move-result-object v0

    sput-object v0, Landroidx/camera/extensions/internal/Version;->VERSION_1_4:Landroidx/camera/extensions/internal/Version;

    const-string v0, "(\\d+)(?:\\.(\\d+))(?:\\.(\\d+))(?:\\-(.+))?"

    .line 45
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/camera/extensions/internal/Version;->VERSION_STRING_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(IIILjava/lang/String;)Landroidx/camera/extensions/internal/Version;
    .locals 1

    .line 77
    new-instance v0, Landroidx/camera/extensions/internal/AutoValue_Version;

    invoke-direct {v0, p0, p1, p2, p3}, Landroidx/camera/extensions/internal/AutoValue_Version;-><init>(IIILjava/lang/String;)V

    return-object v0
.end method

.method private static createBigInteger(Landroidx/camera/extensions/internal/Version;)Ljava/math/BigInteger;
    .locals 4

    .line 136
    invoke-virtual {p0}, Landroidx/camera/extensions/internal/Version;->getMajor()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    const/16 v1, 0x20

    .line 137
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v0

    .line 138
    invoke-virtual {p0}, Landroidx/camera/extensions/internal/Version;->getMinor()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->or(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 139
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v0

    .line 140
    invoke-virtual {p0}, Landroidx/camera/extensions/internal/Version;->getPatch()I

    move-result p0

    int-to-long v1, p0

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->or(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/lang/String;)Landroidx/camera/extensions/internal/Version;
    .locals 5

    .line 56
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 60
    :cond_0
    sget-object v0, Landroidx/camera/extensions/internal/Version;->VERSION_STRING_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 61
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    const/4 v0, 0x1

    .line 65
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x2

    .line 66
    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x3

    .line 67
    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x4

    .line 68
    invoke-virtual {p0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {p0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    const-string p0, ""

    .line 69
    :goto_0
    invoke-static {v0, v1, v2, p0}, Landroidx/camera/extensions/internal/Version;->create(IIILjava/lang/String;)Landroidx/camera/extensions/internal/Version;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public compareTo(I)I
    .locals 1

    const/4 v0, 0x0

    .line 122
    invoke-virtual {p0, p1, v0}, Landroidx/camera/extensions/internal/Version;->compareTo(II)I

    move-result p1

    return p1
.end method

.method public compareTo(II)I
    .locals 1

    .line 129
    invoke-virtual {p0}, Landroidx/camera/extensions/internal/Version;->getMajor()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 130
    invoke-virtual {p0}, Landroidx/camera/extensions/internal/Version;->getMinor()I

    move-result p1

    invoke-static {p1, p2}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    return p1

    .line 132
    :cond_0
    invoke-virtual {p0}, Landroidx/camera/extensions/internal/Version;->getMajor()I

    move-result p2

    invoke-static {p2, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    return p1
.end method

.method public compareTo(Landroidx/camera/extensions/internal/Version;)I
    .locals 1

    .line 115
    invoke-static {p0}, Landroidx/camera/extensions/internal/Version;->createBigInteger(Landroidx/camera/extensions/internal/Version;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {p1}, Landroidx/camera/extensions/internal/Version;->createBigInteger(Landroidx/camera/extensions/internal/Version;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 35
    check-cast p1, Landroidx/camera/extensions/internal/Version;

    invoke-virtual {p0, p1}, Landroidx/camera/extensions/internal/Version;->compareTo(Landroidx/camera/extensions/internal/Version;)I

    move-result p1

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 145
    instance-of v0, p1, Landroidx/camera/extensions/internal/Version;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 149
    :cond_0
    check-cast p1, Landroidx/camera/extensions/internal/Version;

    .line 152
    invoke-virtual {p0}, Landroidx/camera/extensions/internal/Version;->getMajor()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/camera/extensions/internal/Version;->getMajor()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 153
    invoke-virtual {p0}, Landroidx/camera/extensions/internal/Version;->getMinor()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/camera/extensions/internal/Version;->getMinor()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 154
    invoke-virtual {p0}, Landroidx/camera/extensions/internal/Version;->getPatch()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/camera/extensions/internal/Version;->getPatch()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method abstract getDescription()Ljava/lang/String;
.end method

.method public abstract getMajor()I
.end method

.method abstract getMinor()I
.end method

.method abstract getPatch()I
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 160
    invoke-virtual {p0}, Landroidx/camera/extensions/internal/Version;->getMajor()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Landroidx/camera/extensions/internal/Version;->getMinor()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p0}, Landroidx/camera/extensions/internal/Version;->getPatch()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroidx/camera/extensions/internal/Version;->getMajor()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/camera/extensions/internal/Version;->getMinor()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/camera/extensions/internal/Version;->getPatch()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Landroidx/camera/extensions/internal/Version;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/camera/extensions/internal/Version;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
